"""Hardware-free checks of the DMA capture overlay driver and its HWH.

No PYNQ, OLED or FPGA access: the CDMA is simulated at register level and the
boot wrapper / pynq are replaced by stubs.
Run: python3 -m unittest discover -s tests -p 'test_doa_mts_dma.py' -v
"""
import importlib
import sys
import time
import types
import unittest
import xml.etree.ElementTree as ET
from pathlib import Path

import numpy as np

ROOT = Path(__file__).resolve().parents[1]
DMA = ROOT / 'PS/python/dma'
BOOT_HWH = ROOT / 'PS/python/boot/doa_mts.hwh'
DMA_HWH = DMA / 'doa_mts_dma.hwh'
sys.path.insert(0, str(DMA))
import cdma  # noqa: E402


class Phys:
    """Physical memory map for the simulator: base -> uint8 view."""
    def __init__(self):
        self.regions = []

    def add(self, base, array):
        self.regions.append((base, array.view(np.uint8).reshape(-1)))

    def find(self, addr, n):
        for base, mem in self.regions:
            if base <= addr and addr + n <= base + mem.size:
                return mem[addr - base:addr - base + n]
        return None


class FakeCdmaRegs:
    """Register-level model of AXI CDMA 4.1 simple mode (PG034)."""
    def __init__(self, phys, hang=False, sg=False):
        self.phys, self.hang = phys, hang
        self.r = {cdma.CDMACR: 0, cdma.CDMASR: cdma.SR_IDLE | (cdma.SR_SG_INCLD if sg else 0)}
        self.transfers = []

    def read(self, off):
        return self.r.get(off, 0)

    def write(self, off, val):
        if off == cdma.CDMACR:
            if val & cdma.CR_RESET:
                self.r[cdma.CDMASR] = cdma.SR_IDLE | (self.r[cdma.CDMASR] & cdma.SR_SG_INCLD)
                self.r[cdma.CDMACR] = 0
            else:
                self.r[off] = val
        elif off == cdma.CDMASR:
            self.r[off] &= ~(val & (cdma.SR_IOC_IRQ | cdma.SR_ERR_IRQ))
        elif off == cdma.BTT:
            src = self.r[cdma.SA] | (self.r[cdma.SA_MSB] << 32)
            dst = self.r[cdma.DA] | (self.r[cdma.DA_MSB] << 32)
            self.transfers.append((src, dst, val))
            if self.hang:
                self.r[cdma.CDMASR] &= ~cdma.SR_IDLE
                return
            s, d = self.phys.find(src, val), self.phys.find(dst, val)
            if s is None or d is None:
                self.r[cdma.CDMASR] |= cdma.SR_DEC_ERR | cdma.SR_ERR_IRQ | cdma.SR_IDLE
                return
            d[:] = s
            self.r[cdma.CDMASR] |= cdma.SR_IDLE | cdma.SR_IOC_IRQ
        else:
            self.r[off] = val


class CdmaDriver(unittest.TestCase):
    def setUp(self):
        self.phys = Phys()
        self.src = np.arange(4096, dtype=np.uint8)
        self.dst = np.zeros(4096, dtype=np.uint8)
        self.phys.add(0xA0400000, self.src)
        self.phys.add(0x8_1234_0000, self.dst)   # above 4 GB: exercises DA_MSB
        self.regs = FakeCdmaRegs(self.phys)
        self.dma = cdma.Cdma(self.regs)

    def test_copy_and_high_address(self):
        self.dma.copy(0xA0400000 + 32, 0x8_1234_0000 + 64, 1024)
        np.testing.assert_array_equal(self.dst[64:64 + 1024], self.src[32:32 + 1024])
        self.assertEqual(self.regs.transfers, [(0xA0400020, 0x812340040, 1024)])
        self.assertEqual(self.regs.r[cdma.DA_MSB], 0x8)

    def test_alignment_and_length(self):
        with self.assertRaises(ValueError):
            self.dma.copy(0xA0400008, 0x8_1234_0000, 16)
        with self.assertRaises(ValueError):
            self.dma.copy(0xA0400000, 0x8_1234_0000, 0)
        with self.assertRaises(ValueError):
            self.dma.copy(0xA0400000, 0x8_1234_0000, cdma.MAX_BTT + 1)
        with self.assertRaises(ValueError):
            self.dma.copy(0xA0400000, 1 << 40, 16)

    def test_decode_error_resets(self):
        with self.assertRaisesRegex(cdma.CdmaError, 'decode'):
            self.dma.copy(0xB0000000, 0x8_1234_0000, 16)
        self.assertTrue(self.dma.idle())
        self.assertFalse(self.dma.status() & cdma.SR_ERRORS)
        self.dma.copy(0xA0400000, 0x8_1234_0000, 16)   # usable again

    def test_timeout(self):
        regs = FakeCdmaRegs(self.phys, hang=True)
        with self.assertRaisesRegex(cdma.CdmaError, 'timed out'):
            cdma.Cdma(regs).copy(0xA0400000, 0x8_1234_0000, 16, timeout=0.01)

    def test_rejects_scatter_gather_build(self):
        with self.assertRaisesRegex(cdma.CdmaError, 'scatter'):
            cdma.Cdma(FakeCdmaRegs(self.phys, sg=True)).copy(0xA0400000, 0x8_1234_0000, 16)


class FakeBuffer(np.ndarray):
    pass


def install_stubs(phys, regs):
    """pynq and doa_mts stand-ins, so doa_mts_dma imports without hardware."""
    next_addr = [0x7000_0000]
    pynq = types.ModuleType('pynq')

    def allocate(shape, dtype, cacheable=False):
        b = np.zeros(shape, dtype=dtype).view(FakeBuffer)
        b.physical_address = next_addr[0]
        b.cacheable = cacheable
        b.syncs = []
        b.invalidate = lambda: b.syncs.append('invalidate')
        b.flush = lambda: b.syncs.append('flush')
        b.freebuffer = lambda: None
        next_addr[0] += 0x100_0000
        phys.add(b.physical_address, b)
        return b
    pynq.allocate = allocate

    doa_mts = types.ModuleType('doa_mts')

    class doaMtsOverlay:
        def __init__(self, bitfile_name='doa_mts.bit', **kwargs):
            self.bitfile_name = bitfile_name
            self.uram = (np.arange(131072 * 8) % 30000).astype(np.int16)
            self.dac = [np.zeros(131072 * 8, np.int16), np.zeros(131072 * 8, np.int16)]
            phys.add(0xA0400000, self.uram)
            phys.add(0xA0000000, self.dac[0])
            phys.add(0xA0200000, self.dac[1])
            self.mem_dict = {
                'URAM_capture/axi_bram_ctrl_0': {'phys_addr': 0xA0400000, 'addr_range': 0x200000},
                'dac_0/axi_bram_ctrl_0': {'phys_addr': 0xA0000000, 'addr_range': 0x200000},
                'dac_1/axi_bram_ctrl_0': {'phys_addr': 0xA0200000, 'addr_range': 0x200000}}
            self.capture_dma = types.SimpleNamespace(mmio=regs)
            self.adc_capture = self.uram
            self.triggers = 0

        def trigger_capture(self):
            self.triggers += 1
    doa_mts.doaMtsOverlay = doaMtsOverlay
    sys.modules['pynq'] = pynq
    sys.modules['doa_mts'] = doa_mts
    sys.modules.pop('doa_mts_dma', None)
    return importlib.import_module('doa_mts_dma')


class OverlayLogic(unittest.TestCase):
    def setUp(self):
        self.saved = {k: sys.modules.get(k) for k in ('pynq', 'doa_mts', 'doa_mts_dma')}
        self.phys = Phys()
        self.regs = FakeCdmaRegs(self.phys)
        self.mod = install_stubs(self.phys, self.regs)
        self.ol = self.mod.doaMtsDmaOverlay()

    def tearDown(self):
        for k, v in self.saved.items():
            if v is None:
                sys.modules.pop(k, None)
            else:
                sys.modules[k] = v

    def test_defaults(self):
        self.assertEqual(self.ol.bitfile_name, 'doa_mts_dma.bit')
        self.assertEqual(self.ol.capture_buffer.shape, (131072 * 8,))
        self.assertTrue(self.ol.capture_buffer.cacheable)

    def test_full_and_partial_read(self):
        full = self.ol.read_capture()
        np.testing.assert_array_equal(full, self.ol.uram)
        self.assertEqual(self.regs.transfers[-1][2], 2 * 1024 * 1024)
        self.ol.uram[:] = -self.ol.uram
        part = self.ol.read_capture(rows=44000)
        self.assertEqual(part.shape, (44000 * 8,))
        np.testing.assert_array_equal(part, self.ol.uram[:44000 * 8])
        self.assertEqual(self.regs.transfers[-1], (0xA0400000, self.ol.capture_buffer.physical_address, 44000 * 16))
        self.assertEqual(self.ol.capture_buffer.syncs, ['invalidate', 'invalidate'])
        with self.assertRaises(ValueError):
            self.ol.read_capture(rows=131073)

    def test_guard_after_trigger(self):
        self.ol.trigger_capture()
        t0 = time.perf_counter()
        self.ol.read_capture(rows=16)
        self.assertGreaterEqual(time.perf_counter() - t0, self.mod.CAPTURE_GUARD_S * 0.9)
        self.assertEqual(self.ol.triggers, 1)

    def test_internal_capture_contract(self):
        buf = np.zeros((1, 131072 * 8), dtype=np.int16)
        self.ol.internal_capture(buf)
        np.testing.assert_array_equal(buf[0], self.ol.uram)
        small = np.zeros((1, 20), dtype=np.int16)
        self.ol.internal_capture(small)
        np.testing.assert_array_equal(small[0], self.ol.uram[:20])
        with self.assertRaises(Exception):
            self.ol.internal_capture(np.zeros((1, 8), dtype=np.float32))

    def test_dac_dma_write_tiles_like_mmio_writer(self):
        sig = np.array([1, -2, 3], dtype=np.int16)
        self.ol.dac_dma_write(sig, 1)
        expect = np.tile(sig, len(self.ol.dac[1]) // 3 + 1)[:len(self.ol.dac[1])]
        np.testing.assert_array_equal(self.ol.dac[1], expect)
        self.assertFalse(self.ol.dac[0].any())
        self.assertIn('flush', self.ol._dac_buffer.syncs)


def hwh_modules(path):
    root = ET.parse(path).getroot()
    return root, {m.get('FULLNAME'): m for m in root.iter('MODULE')}


def memranges(module):
    return {(r.get('INSTANCE'), r.get('SLAVEBUSINTERFACE')): (int(r.get('BASEVALUE'), 16), int(r.get('HIGHVALUE'), 16))
            for r in module.iter('MEMRANGE') if r.get('MASTERBUSINTERFACE')}


@unittest.skipUnless(DMA_HWH.exists(), 'doa_mts_dma.hwh not built yet')
class DmaHwh(unittest.TestCase):
    def setUp(self):
        self.root, self.mods = hwh_modules(DMA_HWH)
        _, self.boot = hwh_modules(BOOT_HWH)

    def test_target(self):
        info = self.root.find('SYSTEMINFO').attrib
        self.assertEqual((info['DEVICE'], info['PACKAGE'], info['SPEEDGRADE']), ('xczu48dr', 'ffvg1517', '-2'))
        self.assertEqual(info['BOARD'], 'realdigital.org:rfsoc4x2:part0:1.0')

    def test_boot_cells_and_ps_map_kept(self):
        for name in self.boot:
            self.assertIn(name, self.mods)
        ps_new = memranges(self.mods['/zynq_ultra_ps_e_0'])
        for key, rng in memranges(self.boot['/zynq_ultra_ps_e_0']).items():
            self.assertEqual(ps_new[key], rng, key)
        self.assertEqual(ps_new[('capture_dma', 'S_AXI_LITE')], (0x80050000, 0x8005FFFF))

    def test_cdma_configuration_and_map(self):
        m = self.mods['/capture_dma']
        p = {x.get('NAME'): x.get('VALUE') for x in m.iter('PARAMETER')}
        self.assertEqual(p['C_INCLUDE_SG'], '0')
        self.assertEqual(p['C_M_AXI_DATA_WIDTH'], '128')
        self.assertEqual(p['C_ADDR_WIDTH'], '40')
        r = memranges(m)
        self.assertEqual(r[('URAM_capture_axi_bram_ctrl_0', 'S_AXI')], (0xA0400000, 0xA05FFFFF))
        self.assertEqual(r[('dac_0_axi_bram_ctrl_0', 'S_AXI')], (0xA0000000, 0xA01FFFFF))
        self.assertEqual(r[('dac_1_axi_bram_ctrl_0', 'S_AXI')], (0xA0200000, 0xA03FFFFF))
        ddr = sorted((int(x.get('BASEVALUE'), 16), int(x.get('HIGHVALUE'), 16)) for x in m.iter('MEMRANGE')
                     if x.get('MASTERBUSINTERFACE') and x.get('INSTANCE') == 'zynq_ultra_ps_e_0')
        self.assertEqual(ddr, [(0x0, 0x7FFFFFFF), (0x8_0000_0000, 0x8_7FFF_FFFF)])

    def test_pl_clock_and_rfdc_unchanged(self):
        def params(mods, name):
            return {x.get('NAME'): x.get('VALUE') for x in mods[name].find('PARAMETERS')}
        ps_old, ps_new = params(self.boot, '/zynq_ultra_ps_e_0'), params(self.mods, '/zynq_ultra_ps_e_0')
        for k in ('PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0', 'PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1',
                  'PSU__CRL_APB__PL0_REF_CTRL__SRCSEL', 'PSU__FPGA_PL0_ENABLE'):
            self.assertEqual(ps_old[k], ps_new[k], k)
        old, new = params(self.boot, '/usp_rf_data_converter_1'), params(self.mods, '/usp_rf_data_converter_1')
        # every C_ parameter xrfdc reads must exist; enabled-slice values must match
        for k, v in old.items():
            if not k.startswith('C_') or k == 'C_COMPONENT_NAME':
                continue
            self.assertIn(k, new, k)
            disabled_slice = any(k.endswith(s) for s in ('12', '13', '32', '33')) and 'ADC' in k
            if not disabled_slice:
                try:
                    same = float(v) == float(new[k])
                except ValueError:
                    same = v == new[k]
                self.assertTrue(same, '%s: %s != %s' % (k, v, new[k]))


if __name__ == '__main__':
    unittest.main()
