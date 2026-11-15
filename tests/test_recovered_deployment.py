"""Host-only checks. Never imports mts.py or creates a PYNQ overlay."""
import ast
import hashlib
import json
from pathlib import Path
import socket
import sys
from types import SimpleNamespace
import unittest
import xml.etree.ElementTree as ET

import numpy as np

DEPLOYMENT = Path(__file__).resolve().parents[1] / "PS/python/beamforming"
sys.path.insert(0, str(DEPLOYMENT))
from rfsoc_notebook_server import RfsocNotebookServer, ServerConfig


class RecoveredDeployment(unittest.TestCase):
    def test_snapshot_hashes(self):
        manifest = json.loads((DEPLOYMENT / "manifest.json").read_text())
        for item in manifest["files"]:
            with self.subTest(file=item["file"]):
                digest = hashlib.sha256((DEPLOYMENT / item["file"]).read_bytes()).hexdigest()
                self.assertEqual(digest, item["repository_sha256"])

    def test_python_and_notebook_syntax(self):
        for path in DEPLOYMENT.glob("*.py"):
            ast.parse(path.read_text(), filename=str(path), feature_version=(3, 10))
        nb = json.loads((DEPLOYMENT / "boot_reworked_human_readable.ipynb").read_text())
        self.assertEqual(nb["nbformat"], 4)
        for cell in nb["cells"]:
            if cell["cell_type"] == "code":
                self.assertEqual(cell["outputs"], [])
                self.assertIsNone(cell["execution_count"])
                source = "".join(cell["source"])
                source = "\n".join(line for line in source.splitlines() if not line.startswith("%"))
                ast.parse(source, feature_version=(3, 10))

    def test_hwh_version(self):
        root = ET.parse(DEPLOYMENT / "mts.hwh").getroot()
        self.assertEqual(root.attrib["VIVADOVERSION"], "2023.2.2")

    def test_stream_request_accounting(self):
        server = RfsocNotebookServer(ServerConfig(raw_only=True))
        commands = server.split_commands("dataChan 128#stream 3")
        self.assertEqual(server.extract_stream_request(commands), (["dataChan 128"], 3))
        self.assertEqual(server.extract_stream_request(["stream 0"]), ([], 0))
        self.assertEqual(server.extract_stream_request(["alive 1"]), (["alive 1"], 1))

    def test_tcp_command_buffer_and_frame_bytes(self):
        server = RfsocNotebookServer(ServerConfig(raw_only=True))
        server.overlay = SimpleNamespace()
        server._ensure_overlay_runtime_methods()
        overlay = server.overlay
        overlay.reset_receive_buffer()
        left, right = socket.socketpair()
        with left, right:
            left.settimeout(1)
            right.settimeout(1)
            right.sendall(b"stream 2\nstream 0\n")
            self.assertEqual(overlay.receive_command(left), "stream 2")
            self.assertEqual(overlay.receive_command(left), "stream 0")
            right.shutdown(socket.SHUT_WR)
            self.assertIsNone(overlay.receive_command(left))
            if sys.byteorder != "little":
                self.skipTest("Recovered sender uses native int16; board and intended client are little-endian")
            frame = np.array([1, -2, 256, -32768], dtype=np.int16)
            self.assertEqual(overlay.send_int16(left, frame), 8)
            self.assertEqual(right.recv(8), b"\x01\x00\xfe\xff\x00\x01\x00\x80")

    def test_selected_rf_channel_mapping(self):
        # Compile only the pure packing method, avoiding PYNQ imports/initializers.
        tree = ast.parse((DEPLOYMENT / "mts.py").read_text())
        cls = next(n for n in tree.body if isinstance(n, ast.ClassDef) and n.name == "doaMtsOverlay")
        method = next(n for n in cls.body if isinstance(n, ast.FunctionDef) and n.name == "_get_selected_xm655_data")
        ns = {"np": np, "IQ_LANES_PER_RF_CHANNEL": 2}
        exec(compile(ast.Module(body=[method], type_ignores=[]), "packing-only", "exec"), ns)
        # Each tile has 2 samples of 8 lanes; distinct tile offsets expose wrong mapping.
        captures = [np.arange(16, dtype=np.int16) + tile * 100 for tile in range(4)]
        overlay = SimpleNamespace(active_rf_channels=[0, 1, 2, 3], PATH_PER_TILE=4,
                                  data_size=16, _xm655_capture_buffers=lambda: captures)
        pack = ns["_get_selected_xm655_data"]
        np.testing.assert_array_equal(pack(overlay), np.arange(16))
        overlay.active_rf_channels = [0, 4, 8, 12]
        np.testing.assert_array_equal(pack(overlay),
            [0, 1, 100, 101, 200, 201, 300, 301, 8, 9, 108, 109, 208, 209, 308, 309])


if __name__ == "__main__":
    unittest.main()
