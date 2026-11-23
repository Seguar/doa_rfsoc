"""AXI CDMA 4.1 (PG034) simple-mode driver, independent of PYNQ.

`regs` is any object with read(offset) -> int and write(offset, value), such as
pynq.MMIO or the DefaultIP of the CDMA (ip.mmio). Tests pass a simulator.

The doa_mts_dma overlay instantiates the CDMA without scatter-gather and without
the data realignment engine, 128-bit data path, 40-bit addresses. Without the
realignment engine, source and destination addresses must be multiples of the
data-path width (16 bytes); the capture RAM rows are 16 bytes, so any row range
qualifies.
"""
import time

CDMACR = 0x00
CDMASR = 0x04
SA = 0x18
SA_MSB = 0x1C
DA = 0x20
DA_MSB = 0x24
BTT = 0x28

CR_RESET = 1 << 2
SR_IDLE = 1 << 1
SR_SG_INCLD = 1 << 3
SR_INT_ERR = 1 << 4
SR_SLV_ERR = 1 << 5
SR_DEC_ERR = 1 << 6
SR_IOC_IRQ = 1 << 12
SR_ERR_IRQ = 1 << 14
SR_ERRORS = SR_INT_ERR | SR_SLV_ERR | SR_DEC_ERR

ALIGN = 16              # bytes: 128-bit data path, no realignment engine
MAX_BTT = (1 << 26) - 1  # bytes-to-transfer register width in CDMA 4.1
ADDR_BITS = 40


class CdmaError(RuntimeError):
    pass


class Cdma:
    def __init__(self, regs, align=ALIGN, addr_bits=ADDR_BITS):
        self.regs = regs
        self.align = align
        self.addr_bits = addr_bits

    def status(self):
        return self.regs.read(CDMASR)

    def idle(self):
        return bool(self.status() & SR_IDLE)

    def reset(self, timeout=0.1):
        """Soft reset: aborts a transfer and clears error bits."""
        self.regs.write(CDMACR, CR_RESET)
        end = time.perf_counter() + timeout
        while self.regs.read(CDMACR) & CR_RESET:
            if time.perf_counter() > end:
                raise CdmaError('CDMA reset did not complete')

    def _check(self, name, addr, nbytes):
        if addr % self.align:
            raise ValueError('%s address 0x%x is not %d-byte aligned' % (name, addr, self.align))
        if addr < 0 or addr + nbytes > (1 << self.addr_bits):
            raise ValueError('%s range 0x%x+%d is outside the %d-bit CDMA address space'
                             % (name, addr, nbytes, self.addr_bits))

    def start(self, src, dst, nbytes):
        """Program one simple-mode transfer; writing BTT starts it."""
        nbytes = int(nbytes)
        if not 0 < nbytes <= MAX_BTT:
            raise ValueError('transfer length %d outside 1..%d bytes' % (nbytes, MAX_BTT))
        self._check('source', src, nbytes)
        self._check('destination', dst, nbytes)
        sr = self.status()
        if sr & SR_SG_INCLD:
            raise CdmaError('CDMA was built with scatter-gather; simple mode expected')
        if sr & SR_ERRORS:
            self.reset()
            sr = self.status()
        if not sr & SR_IDLE:
            raise CdmaError('CDMA busy (status 0x%08x)' % sr)
        self.regs.write(CDMASR, SR_IOC_IRQ | SR_ERR_IRQ)   # clear completion flags (W1C)
        self.regs.write(SA, src & 0xFFFFFFFF)
        self.regs.write(SA_MSB, src >> 32)
        self.regs.write(DA, dst & 0xFFFFFFFF)
        self.regs.write(DA_MSB, dst >> 32)
        self.regs.write(BTT, nbytes)

    def wait(self, timeout=0.5):
        """Poll until idle; raise on DMA error. Returns the polled status."""
        end = time.perf_counter() + timeout
        while True:
            sr = self.status()
            if sr & SR_ERRORS:
                self.reset()
                kind = [n for b, n in ((SR_INT_ERR, 'internal'), (SR_SLV_ERR, 'slave'),
                                       (SR_DEC_ERR, 'decode')) if sr & b]
                raise CdmaError('CDMA %s error (status 0x%08x)' % ('/'.join(kind), sr))
            if sr & SR_IDLE:
                return sr
            if time.perf_counter() > end:
                self.reset()
                raise CdmaError('CDMA transfer timed out (status 0x%08x)' % sr)

    def copy(self, src, dst, nbytes, timeout=0.5):
        """Blocking copy of nbytes from physical src to physical dst; returns seconds."""
        t0 = time.perf_counter()
        self.start(src, dst, nbytes)
        self.wait(timeout)
        return time.perf_counter() - t0
