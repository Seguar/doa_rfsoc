# -------------------------------------------------------------------------------------------------
# Copyright (C) 2023 Advanced Micro Devices, Inc
# SPDX-License-Identifier: MIT
# ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- --

all: block_design bitstream check_timing handoff
	@echo
	@tput setaf 2 ; echo "Built overlays successfully!!"; tput sgr0;
	@echo

# board_files:
# 	wget "https://www.realdigital.org/downloads/9d2af32116d5420d25da904f6a06bb1f.zip" --no-check-certificate -O bf.zip && \
# 	unzip bf.zip -d board_files && rm bf.zip

block_design:
	vivado -mode batch -source build.tcl

bitstream:
	vivado -mode batch -source build_bitstream.tcl -notrace -tclargs doa_mts

check_timing:
	vivado -mode batch -source check_timing.tcl -notrace -tclargs doa_mts

handoff:
	vivado -mode batch -source handoff.tcl -notrace -tclargs doa_mts

clean:
	rm -rf doa_mts myproj .srcs .gen *.jou *.log NA .Xil 
