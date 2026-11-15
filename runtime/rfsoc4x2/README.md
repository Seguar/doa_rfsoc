# RFSoC 4x2 deployment recovered 2026-11-15

The inspected installation identifies as **RFSoC4x2** in the device tree. Its
HWH targets **xczu48dr / ffvg1517 / -2**, with board identifier
`realdigital.org:rfsoc4x2:part0:1.0`. This distinguishes the installation from
the ZCU216 branch; a unique silicon serial was not established. Shared SSH host
keys between images are not evidence that two endpoints are the same board.

## Live service versus saved notebooks

A running process invoked `python3 /boot/boot.py`; `bootpy.service` invokes
`/usr/local/bin/bootpy.sh`. This is the strongest evidence of the live application,
not proof of the currently loaded FPGA design or successful RF acquisition.
The collected source is in [PS/python/boot](../../PS/python/boot).

The board's boot wrapper, bit/HWH pair, and `data.mat` **already matched** that
repository directory byte-for-byte. Only `boot.py` needed synchronization: it
uses `/boot/data.mat`, a nested command loop, and different reconnect logging.
The `PL/out` bit/HWH pair is different; do not interchange these pairs.

The newest saved notebook was `MultiTest/Untitled.ipynb`, with no executed cells.
Next was `MultiTest/main.ipynb`, with three saved executed cells. `newProto.ipynb`
and `sub.ipynb` preserve additional protocol and analysis experiments. They are
now in [PS/python/multitest](../../PS/python/multitest), with their wrapper and
bit/HWH pair. The hardware pair equals the boot pair, but the MultiTest wrapper
comments out the boot wrapper's zocl module restart. Keep each wrapper with its
own workflow. Importing either wrapper initializes the OLED; constructing an
overlay can change hardware state even when a notebook looks like analysis.

The board reported January 2025 during collection in November 2026. Modification
ordering and saved execution metadata do **not** prove the last-used notebook.
Authenticated Jupyter sessions were unavailable. The complete 323-file collection
and measurement inputs remain in the private local evidence archive.

## Runtime and dependencies

Observed: PYNQ 3.0.1, Python 3.10, rfsoc4x2 1.0, xrfclk/xrfdc 2.0,
rfsoc-mts 1.0.1, NumPy 1.21.5, SciPy 1.8.0, netifaces 0.11.0.
The boot program needs the installed `rfsoc4x2` OLED package and GPIO access,
the matching `doa_mts.py/.bit/.hwh`, and `/boot/data.mat`. The latter contains
`sigInt16`, shape `(1, 1100250)`, int16; it was already tracked and matched the
board. Other collected MAT measurement/calibration files have not been published.
External package contents and complete dependency closure are not certified.

The recovered [clock files](clocks) are the installed LMK04828 500 MHz and
LMX2594 500 MHz register dumps selected by the wrapper. They are configuration
evidence, not clock measurements. They are outside the existing `Misc/clk_ext`
files; applying them or changing a startup service is a separate deployment step.

Both the recovered HWH and the checked-in Tcl identify **Vivado 2022.2**. Matching
versions alone do not prove the Tcl reproduces the recovered bitstream. The
available build VM has 2025.2, so a rebuild requires matching tools or a validated
port. No build, programming, clock change or RF test was performed in this audit.

## Protocol and known experimental limitations

The boot server uses TCP 4000, newline/CR-terminated commands, `#` between
commands and `/` between integer arguments. `data_size` counts int16 values;
default 131072 values means 262144 bytes. Four complex channels use eight
interleaved I/Q lanes. `struct.pack('h', ...)` is native-endian; the board is
little-endian and MATLAB `tcpDataRec` reconstructs `I - 1j*Q`.

After processing a command, the boot loop sends **continuously while dataStream
is true**. It does not read further commands inside that loop. Do not assume
that a later `dataStream 0` command can stop it, or that one request means one
frame. The ZCU216-specific `stream N` and DAC-tracking commands are not provided
by this wrapper. Host/server interoperability needs a live test before use.

`MultiTest/main.ipynb` is an experimental continuous TCP sender: its async
control reader is a placeholder, it contains alternative server starts and a
scratch cell, and `asyncio.run` can conflict with Jupyter's active event loop.
`newProto.ipynb` instead experiments with JSON TCP control and UDP samples; it
is not the legacy TCP wire protocol. These are recovered experiments, not a
validated replacement boot service. Do not run all notebooks/cells together
or run them alongside the existing service.

Published notebooks have outputs/counts cleared and bind addresses replaced by
`os.environ["RFSOC_BIND_IP"]`. Set that variable to the intended board interface
before experimenting. Unmodified originals, source hashes and transformation
records are retained; no automatic network or service changes are made.

## Verification

[manifest.json](manifest.json) records original and repository SHA-256 values.
All 323 private originals were independently verified after transfer. Host checks
verify snapshot bytes, notebook/Python syntax, HWH identity, pair equality,
command parsing and capture slicing without importing the hardware wrapper:

```sh
python3 -m unittest discover -s tests -p test_rfsoc4x2_snapshot.py -v
```

These checks need NumPy, but no board. They do not prove live TCP behavior, RF
performance, calibration accuracy or the identity of loaded FPGA fabric.
