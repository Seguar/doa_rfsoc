"""Pure host checks: no PYNQ imports, OLED initialization or FPGA operations."""
import ast
import hashlib
import json
from pathlib import Path
import socket
from types import SimpleNamespace
import unittest
import xml.etree.ElementTree as ET
import numpy as np

ROOT = Path(__file__).resolve().parents[1]
BOOT = ROOT / 'PS/python/boot'
MULTI = ROOT / 'PS/python/multitest'


def pure_method(name):
    tree = ast.parse((BOOT / 'doa_mts.py').read_text())
    cls = next(n for n in tree.body if isinstance(n, ast.ClassDef) and n.name == 'doaMtsOverlay')
    method = next(n for n in cls.body if isinstance(n, ast.FunctionDef) and n.name == name)
    scope = {'np': np}
    exec(compile(ast.Module(body=[method], type_ignores=[]), 'pure-method', 'exec'), scope)
    return scope[name]


class Snapshot(unittest.TestCase):
    def test_hashes(self):
        manifest = json.loads((ROOT / 'runtime/rfsoc4x2/manifest.json').read_text())
        for entry in manifest['files']:
            with self.subTest(path=entry['repository_path']):
                self.assertEqual(hashlib.sha256((ROOT / entry['repository_path']).read_bytes()).hexdigest(),
                                 entry['repository_sha256'])

    def test_syntax_without_execution(self):
        for folder in (BOOT, MULTI):
            for path in folder.glob('*.py'):
                ast.parse(path.read_text(), feature_version=(3, 10))
        for path in MULTI.glob('*.ipynb'):
            nb = json.loads(path.read_text())
            self.assertEqual(nb['nbformat'], 4)
            for cell in nb['cells']:
                if cell['cell_type'] == 'code':
                    self.assertEqual(cell['outputs'], [])
                    self.assertIsNone(cell['execution_count'])
                    compile(''.join(cell['source']), str(path), 'exec', flags=ast.PyCF_ALLOW_TOP_LEVEL_AWAIT)

    def test_recovered_pair_and_target(self):
        for suffix in ('bit', 'hwh'):
            self.assertEqual((BOOT / ('doa_mts.' + suffix)).read_bytes(),
                             (MULTI / ('doa_mts.' + suffix)).read_bytes())
        root = ET.parse(BOOT / 'doa_mts.hwh').getroot()
        self.assertEqual(root.attrib['VIVADOVERSION'], '2022.2')
        self.assertIn('xczu48dr', (BOOT / 'doa_mts.hwh').read_text())

    def test_legacy_command_termination(self):
        receive = pure_method('handle_client_connection')
        left, right = socket.socketpair()
        with left, right:
            left.settimeout(1)
            right.sendall(b'dataChan 16#dataStream 1\nphase 0/0/0/0\r')
            self.assertEqual(receive(None, left), 'dataChan 16#dataStream 1')
            self.assertEqual(receive(None, left), 'phase 0/0/0/0')
            right.shutdown(socket.SHUT_WR)
            self.assertIsNone(receive(None, left))

    def test_capture_slice_preserves_lanes(self):
        capture = pure_method('get_custom_data')
        values = np.array([1, -2, 3, -4, 5, -6, 7, -8] * 2, dtype=np.int16)
        overlay = SimpleNamespace(adc_capture=values, data_size=8,
            internal_capture=lambda out: np.copyto(out[0], values))
        result = capture(overlay, 8)
        np.testing.assert_array_equal(result, values[:8])
        self.assertEqual(result.dtype, np.int16)


if __name__ == '__main__':
    unittest.main()
