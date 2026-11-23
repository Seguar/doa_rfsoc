"""doa_mts_dma overlay: the doa_mts boot design plus an AXI CDMA that copies the
ADC capture RAM into PS DDR.

Use it next to the boot wrapper doa_mts.py (copy doa_mts.py, cdma.py, this file
and doa_mts_dma.bit/.hwh into one folder):

    from doa_mts_dma import doaMtsDmaOverlay
    ol = doaMtsDmaOverlay()               # same start-up as doaMtsOverlay
    ol.trigger_capture()                  # or mts_sync.trigger(ol)
    raw = ol.read_capture()               # all 131072 rows, int16, 1048576 values
    win = ol.read_capture(rows=44000)     # only the rows a reduced window needs

Everything doaMtsOverlay offers is unchanged: adc_capture, dac0_player and
dac1_player stay MMIO views of the same BRAM controllers, so code that reads
adc_capture word by word still works. read_capture() returns a view of a DDR
buffer that the next read_capture() overwrites; copy it if it must survive.

Timing: the capture writes one 16-byte row per 125 MHz clock (131072 rows in
1.05 ms) and the CDMA reads at up to one row per pl_clk0 cycle, so a copy
started right after the trigger edge could overtake the capture. read_capture()
therefore waits until CAPTURE_GUARD_S has passed since the last trigger made
through this object (trigger_capture/internal_capture or mark_triggered()).
"""
import time

import numpy as np
import pynq

from doa_mts import doaMtsOverlay
from cdma import Cdma

ROW_BYTES = 16            # 8 int16 lanes (4 complex streams) per capture row
CAPTURE_ROWS = 131072     # 2 MB URAM
CAPTURE_GUARD_S = 0.002   # capture takes 131072 / 125 MHz = 1.05 ms
CAPTURE_IP = 'URAM_capture/axi_bram_ctrl_0'
DAC_IPS = ('dac_0/axi_bram_ctrl_0', 'dac_1/axi_bram_ctrl_0')


class doaMtsDmaOverlay(doaMtsOverlay):
    def __init__(self, bitfile_name='doa_mts_dma.bit', cacheable=True, **kwargs):
        super().__init__(bitfile_name, **kwargs)
        self.cdma = Cdma(self.capture_dma.mmio)
        self.cdma.reset()
        self.capture_phys = self.mem_dict[CAPTURE_IP]['phys_addr']
        size = self.mem_dict[CAPTURE_IP]['addr_range']
        if size != CAPTURE_ROWS * ROW_BYTES:
            raise RuntimeError('capture RAM is %d bytes, expected %d' % (size, CAPTURE_ROWS * ROW_BYTES))
        self.cacheable = cacheable
        self.capture_buffer = pynq.allocate(shape=(CAPTURE_ROWS * ROW_BYTES // 2,), dtype=np.int16,
                                            cacheable=cacheable)
        self._dac_buffer = None
        self._t_trigger = None
        self.last_copy_s = None

    # -- capture ----------------------------------------------------------
    def mark_triggered(self):
        """Call right after a capture trigger edge made outside this class."""
        self._t_trigger = time.perf_counter()

    def trigger_capture(self):
        super().trigger_capture()
        self.mark_triggered()

    def wait_capture_done(self):
        if self._t_trigger is None:
            return
        left = CAPTURE_GUARD_S - (time.perf_counter() - self._t_trigger)
        if left > 0:
            time.sleep(left)

    def read_capture(self, rows=None, out=None):
        """DMA the first `rows` capture rows (default all) into DDR and return
        them as int16 values (8 per row). With `out`, also copy into that array."""
        rows = CAPTURE_ROWS if rows is None else int(rows)
        if not 0 < rows <= CAPTURE_ROWS:
            raise ValueError('rows must be 1..%d' % CAPTURE_ROWS)
        self.wait_capture_done()
        nbytes = rows * ROW_BYTES
        self.last_copy_s = self.cdma.copy(self.capture_phys, self.capture_buffer.physical_address, nbytes)
        if self.cacheable:
            self.capture_buffer.invalidate()
        view = self.capture_buffer[:nbytes // 2]
        if out is not None:
            out[:nbytes // 2] = view
            return out
        return view

    def read_capture_tail(self, values=8):
        """The last `values` int16 of the capture RAM through MMIO (sentinel check)."""
        n = CAPTURE_ROWS * ROW_BYTES // 2
        return np.array(self.adc_capture[n - values:n], dtype=np.int16, copy=True)

    def internal_capture(self, buffer):
        """Same contract as doaMtsOverlay.internal_capture, copied by DMA."""
        if not np.issubdtype(buffer.dtype, np.int16):
            raise Exception("buffer not defined or np.int16!")
        self.trigger_capture()
        n = len(buffer[0])
        rows = -(-n // 8)
        buffer[0] = self.read_capture(rows=rows)[:n]

    # -- DAC player RAMs ---------------------------------------------------
    def dac_dma_write(self, signal, index):
        """Fill DAC player `index` (0 or 1) like dac_data_mem_write, through the CDMA."""
        ip = DAC_IPS[index]
        size = self.mem_dict[ip]['addr_range']
        if self._dac_buffer is None:
            self._dac_buffer = pynq.allocate(shape=(size // 2,), dtype=np.int16, cacheable=self.cacheable)
        mem = self._dac_buffer
        signal = np.asarray(signal)
        n = len(signal)
        if n >= len(mem):
            mem[:] = np.int16(signal[:len(mem)])
        else:
            mem[:] = np.int16(np.tile(signal, len(mem) // n + 1)[:len(mem)])
        if self.cacheable:
            mem.flush()
        return self.cdma.copy(mem.physical_address, self.mem_dict[ip]['phys_addr'], size)

    def close_dma(self):
        for b in (self.capture_buffer, self._dac_buffer):
            if b is not None:
                b.freebuffer()
        self.capture_buffer = self._dac_buffer = None
