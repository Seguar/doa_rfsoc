#!/usr/bin/env python3
# Copyright (c) 2022 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

from time import sleep
from pynq.overlays.base import BaseOverlay
from pynq import GPIO
from rfsoc4x2 import oled
import pynq
import subprocess as sp
import netifaces as ni
import socket
import struct
import numpy as np
from doa_mts import *

oled = oled.oled_display()
oled.write("RFSoC-PYNQ\nVersion {}".format(pynq.__version__))

# LMK clock config
lmk_reset = GPIO(341, 'out')
lmk_clk_sel0 = GPIO(342, 'out')
lmk_clk_sel1 = GPIO(346, 'out')

lmk_reset.write(1)
lmk_reset.write(0)
lmk_clk_sel0.write(0)
lmk_clk_sel1.write(0)

ps_btn = GPIO(357, 'in') #  GPIO.get_gpio_base() + pin num




# base = BaseOverlay('base.bit')
# oled.write("Base done")
# sleep(0.2)
# base.init_rf_clks()
# oled.write("Clk done")
# sleep(0.2)

o1 = doaMtsOverlay('doa_mts.bit')

# o1.dac_enable.on()
# from scipy.signal import chirp
# from scipy.signal import sawtooth
# from scipy.signal import gausspulse

# DAC_SR = 10.0E9  # Sample rate of DACs and ADCs is 4.0 GHz
# ADC_SR = 10.0E9
# Fc = 500.0E6 # Set center frequency of waveform to 250.0 MHz
# Fe = 500.0E6 # maximum frequency of chirp at end of record
# DAC_Amplitude = 16383.0  # 14bit DAC +16383/-16384
# X_axis = (1/DAC_SR) * np.arange(0,o1.dac1_player.shape[0])
# # generate some basic waveforms
# DAC_sinewave = DAC_Amplitude * np.sin(2*np.pi*Fc*X_axis)
# DAC_sawtooth = DAC_Amplitude * sawtooth(2 * np.pi * Fc * X_axis)
# DAC_chirp = DAC_Amplitude * chirp(np.arange(0, o1.dac1_player.shape[0])/DAC_SR,
#                                   f0=Fc, f1=Fe, t1=(o1.dac1_player.shape[0]/DAC_SR), 
#                                   phi=0.0, method='linear')

# o1.dac0_player[:] = np.int16(DAC_sinewave)
# o1.dac1_player[:] = np.int16(DAC_sinewave)


iface = ni.gateways()['default'][ni.AF_INET][1]
ip_address = ni.ifaddresses(iface)[2][0]['addr']
oled.write("IP Addr({}):\n{}".format(iface, ip_address))

server_ip = ip_address  # Use the appropriate IP address or hostname
server_port = 4000  # Use a free port number

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to the server IP and port
server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
server_socket.bind((server_ip, server_port))
oled.write("TCP/IP server on")

server_socket.listen(1)
client_socket, client_address = server_socket.accept()
data_size = struct.unpack('Q', client_socket.recv(64))[0]
while True:
    if (ps_btn.read()):
        oled.write("PS_BTN")
        client_socket.close()
        server_socket.close()
    try:
        # Get data from ADCs
        data = o1.get_custom_data(data_size)
        # Pack the data as binary
        data_binary = struct.pack('h' * data_size, *data)
        # Send the data
        client_socket.sendall(data_binary)
        PS_BTN_RST = ps_btn.read()
    except BrokenPipeError:
        server_socket.listen(1)
        # Accept a connection from the client
        client_socket, client_address = server_socket.accept()
        oled.write("New connection (BrokenPipeError):")
        # print(client_address)
        continue
    except ConnectionResetError:
        server_socket.listen

