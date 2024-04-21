#!/usr/bin/env python3
# Copyright (c) 2022 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

from time import sleep
from pynq.overlays.base import BaseOverlay
from pynq import GPIO
import pynq
import subprocess as sp
import netifaces as ni
import socket
import struct
import numpy as np
from doa_mts import *
import scipy.io


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

o1 = doaMtsOverlay('doa_mts.bit')

mat = scipy.io.loadmat('data.mat')

data = mat.get('sigInt16')
o1.dac_data_mem_write(data[0], o1.dac0_player)
o1.dac_data_mem_write(data[0], o1.dac1_player)


try:
    iface = ni.gateways()['default'][ni.AF_INET][1]
    ip_address = ni.ifaddresses(iface)[2][0]['addr']    
except:
    if ('usb0' in ni.interfaces()) and (len(ni.ifaddresses('usb0')) == 3):
        iface = 'usb0'
        ip_address = ni.ifaddresses('usb0')[2][0]['addr']
    else:
        oled.write("RFSoC-PYNQ\nNo IP detected")
oled.write("IP Addr({}):\n{}".format(iface, ip_address))

server_ip = ip_address  # Use the appropriate IP address or hostname
server_port = 4000  # Use a free port number

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Bind the socket to the server IP and port
server_socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
server_socket.bind((server_ip, server_port))
oled.write("TCP/IP server on\n Interface({})".format(iface))

server_socket.listen(1)
client_socket, client_address = server_socket.accept()
oled.write("Connected")
while True:
    if ps_btn.read() == 1:
        oled.write("PS BTN reset\nServer Shutdown")
        break
    try:
        commandList = o1.handle_client_connection(client_socket).split(splitSym)
        print(commandList)
        o1.handle_commands(commandList)
        while o1.dataStream:    
            data = o1.get_custom_data(o1.data_size)
            data_binary = struct.pack('h' * o1.data_size, *data)
            client_socket.sendall(data_binary)
    except:
        server_socket.listen(1)
        client_socket, client_address = server_socket.accept()
        oled.write("New connection")

