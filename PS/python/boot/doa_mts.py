import pynq
from pynq import Overlay, MMIO
import xrfclk
import xrfdc
import numpy as np
import time
import os
import subprocess

from pynq import GPIO
from rfsoc4x2 import oled
import subprocess as sp
import netifaces as ni
import socket
import struct

MODULE_PATH = os.path.dirname(os.path.realpath(__file__))
CLOCKWIZARD_LOCK_ADDRESS = 0x0004
CLOCKWIZARD_RESET_ADDRESS = 0x0000
CLOCKWIZARD_RESET_TOKEN = 0x000A
MTS_START_TILE = 0x01
MAX_DAC_TILES = 4
MAX_ADC_TILES = 4
DAC_REF_TILE = 2
ADC_REF_TILE = 2

RFSOC4X2_LMK_FREQ = 500.0
RFSOC4X2_LMX_FREQ = 500.0
RFSOC4X2_DAC_TILES = 0b0101
RFSOC4X2_ADC_TILES = 0b0101

DATASTREAM = 1 #TODO implement data stream
CHANNELS = 8
DATA_SIZE = (2**14)*CHANNELS
splitSym = "#" # For parsing commands
EVENT_SRC = xrfdc.EVNT_SRC_SYSREF # For MTS

NYQUIST_ZONE = 2
CENTRE_FREQ = 5700
PHASES = [-24, -64.5, 132.88, 179.67]
D_PHASES = [0, 0, 0, 0]
D_NYQUIST_ZONE = [2, 2, 2, 2]
D_CENTRE_FREQ = [5700, 5700, 5700, 5700]

DA = "all" # "all" DACs = ADCs params, "dac" DACs = DACs only, "none" DACs =/= ADCs TODO implement

oled = oled.oled_display()
class doaMtsOverlay(Overlay):
    """
    The MTS overlay demonstrates the RFSoC multi-tile synchronization capability that enables
    multiple RF DAC and ADC tiles to achieve latency alignment. This capability is key to enabling
    Massive MIMO, phased array RADAR applications and beamforming.
    """
    def __init__(self, bitfile_name='doa_mts.bit', **kwargs):
        """
         This overlay class supports the MTS overlay.  It configures the PL gpio, internal memories,
         PL-DRAM and DMA interfaces.  Additional helper methods are provided to: configure and verify
         MTS, verify the DACRAM and read captured samples from the internal ADC
         memories and the PL-DDR4 memory.  In addition to the bitfile_name, the active ADC and DAC
         tiles must be provided to use in the MTS initialization.
        """
        board = os.getenv('BOARD') 
        # Run lsmod command to get the loaded modules list
        output = subprocess.check_output(['lsmod'])
        # Check if "zocl" is present in the output
        if b'zocl' in output:
            # If present, remove the module using rmmod command
            rmmod_output = subprocess.run(['rmmod', 'zocl'])
            # Check return code
            assert rmmod_output.returncode == 0, "Could not restart zocl. Please Shutdown All Kernels and then restart"
            # If successful, load the module using modprobe command
            modprobe_output = subprocess.run(['modprobe', 'zocl'])
            assert modprobe_output.returncode == 0, "Could not restart zocl. It did not restart as expected"
        else:
            modprobe_output = subprocess.run(['modprobe', 'zocl'])
            # Check return code
            assert modprobe_output.returncode == 0, "Could not restart ZOCL!"

        # xrfclk.set_ref_clks(lmk_freq = RFSOC4X2_LMK_FREQ, lmx_freq = RFSOC4X2_LMX_FREQ)
        self.ACTIVE_DAC_TILES = RFSOC4X2_DAC_TILES
        self.ACTIVE_ADC_TILES = RFSOC4X2_ADC_TILES

        self.channels = CHANNELS
        self.data_size = DATA_SIZE
        self.dataStream = DATASTREAM
        self.event_src = EVENT_SRC 
        # ADC parameters
        self.phases = PHASES
        self.centre_freq = CENTRE_FREQ
        self.nyquist_zone = NYQUIST_ZONE
        # DAC parameters
        self.d_phases = D_PHASES
        self.d_centre_freq = D_CENTRE_FREQ
        self.d_nyquist_zone = D_NYQUIST_ZONE    

        self.da = DA
        self.dac_signal = [np.zeros(len(self.dac0_player), dtype=np.int16), 0, np.zeros(len(self.dac1_player), dtype=np.int16), 0]    
    
        self.init_rf_clks()
        time.sleep(0.5)
        super().__init__(resolve_binary_path(bitfile_name), **kwargs)  
        
        self.xrfdc = self.usp_rf_data_converter_1       
        self.xrfdc.mts_dac_config.RefTile = DAC_REF_TILE  # DAC tile distributing reference clock
        self.xrfdc.mts_adc_config.RefTile = ADC_REF_TILE  # ADC                
        
        self.adc_tiles = {}
        self.adc = {}
        bitvector = self.ACTIVE_ADC_TILES        
        for n in range(MAX_ADC_TILES):
            if (bitvector & 0x1):
                self.adc_tiles[n] = self.xrfdc.adc_tiles[n]
                self.adc[n] = self.adc_tiles[n].blocks[0]
                self.adc[n+1] = self.adc_tiles[n].blocks[1]
            bitvector = bitvector >> 1

        self.dac_tiles = {}
        self.dac = {}
        bitvector = self.ACTIVE_DAC_TILES
        for n in range(MAX_DAC_TILES):
            if (bitvector & 0x1):
                self.dac_tiles[n] = self.xrfdc.dac_tiles[n]
                self.dac[n] = self.dac_tiles[n].blocks[0]
            bitvector = bitvector >> 1

        # map PL GPIO registers
        self.dac0_enable =  self.control.gpio_control.axi_gpio_dac0.channel1[0]
        self.dac1_enable =  self.control.gpio_control.axi_gpio_dac1.channel1[0]
        self.trig_cap = self.control.gpio_control.axi_gpio_bram_adc.channel1[0]
        
        # DAC Player Memory - DACs will play this waveform
        self.dac0_player = self.memdict_to_view("dac_0/axi_bram_ctrl_0")
        self.dac1_player = self.memdict_to_view("dac_1/axi_bram_ctrl_0")
        
        # ADC Capture Memories
        self.adc_capture = self.memdict_to_view("URAM_capture/axi_bram_ctrl_0")

        # Reset GPIOs and bring to known state
        self.dac0_enable.off()
        self.dac1_enable.off()
        self.trig_cap.off() 

        # MTS power up sequence
        self.dac0_enable.on()
        self.dac1_enable.on()
        self.trig_cap.off() 
        self.mts_sync()
        self.mts_sync()
        self.trig_cap.on() 
        self.trig_cap.off() 

    def init_rf_clks(self, lmk_freq=RFSOC4X2_LMK_FREQ, lmx_freq=RFSOC4X2_LMX_FREQ):
        """Initialise the LMK and LMX clocks for the radio hierarchy.

        The radio clocks are required to talk to the RF-DCs and only need
        to be initialised once per session.

        """        
        xrfclk.set_ref_clks(lmk_freq=lmk_freq, lmx_freq=lmx_freq)

    def memdict_to_view(self, ip, dtype='int16'):
        """ Configures access to internal memory via MMIO"""
        baseAddress = self.mem_dict[ip]["phys_addr"]
        mem_range = self.mem_dict[ip]["addr_range"]
        ipmmio = MMIO(baseAddress, mem_range)
        return ipmmio.array[0:ipmmio.length].view(dtype)

    def verify_clock_tree(self):
        """ Verify the PL and PL_SYSREF clocks are active by verifying an MMCM is in the LOCKED state"""
        Xstatus = self.clocktreeMTS.MTSclkwiz.read(CLOCKWIZARD_LOCK_ADDRESS) # reads the LOCK register
        # the ClockWizard AXILite registers are NOT fully mapped: refer to PG065
        if (Xstatus != 1):
            raise Exception("The MTS ClockTree has failed to LOCK. Please verify board clocking configuration")

    def trigger_capture(self):
        """ Internal loopback of DAC waveform to internal capture mirror"""        
        self.trig_cap.off()
        self.trig_cap.on() # actually triggers adc[A..D] to capture too
        self.trig_cap.off()

    def internal_capture(self, buffer):
        """ Captures ADC samples from three channels and stores to internal memories """
        if not np.issubdtype(buffer.dtype, np.int16):
            raise Exception("buffer not defined or np.int16!")
        self.trigger_capture()
        buffer[0] = np.copy(self.adc_capture[0:len(buffer[0])])

    def mts_sync(self, dacTarget=-1, adcTarget=-1):
        """
        MTS
        """

        # self.clocktreeMTS.MTSclkwiz.mmio.write_reg(CLOCKWIZARD_RESET_ADDRESS, CLOCKWIZARD_RESET_TOKEN)
        # time.sleep(0.1)
        self.xrfdc.mts_dac_config.Tiles = self.ACTIVE_DAC_TILES
        self.xrfdc.mts_adc_config.Tiles = self.ACTIVE_ADC_TILES
        self.xrfdc.mts_dac_config.SysRef_Enable = 1
        self.xrfdc.mts_adc_config.SysRef_Enable = 1
        self.xrfdc.mts_dac_config.Target_Latency = dacTarget
        self.xrfdc.mts_adc_config.Target_Latency = adcTarget
        self.xrfdc.mts_dac()
        self.xrfdc.mts_adc()
        self.clocktreeMTS.MTSclkwiz.mmio.write_reg(CLOCKWIZARD_RESET_ADDRESS, CLOCKWIZARD_RESET_TOKEN)
        self.verify_clock_tree()
        # self.xrfdc.mts_adc_config.SysRef_Enable = 0
        time.sleep(0.1)

        self.configure_adc_tiles(0)
        self.configure_adc_tiles(2)
        bitvector = self.ACTIVE_DAC_TILES
        for n in range(MAX_DAC_TILES):
            if (bitvector & 0x1):
                self.xrfdc.dac_tiles[n].Reset()
            bitvector = bitvector >> 1
        # Reset ADC FIFO of only user selected tiles - restarts MTS engine
        bitvector = self.ACTIVE_ADC_TILES
        for n in range(MAX_ADC_TILES):
            if (bitvector & 0x1):
                self.configure_adc_tiles(n)
            bitvector = bitvector >> 1
        self.configure_dacs()
        self.configure_adcs()
        # time.sleep(1)
        # self.xrfdc.mts_adc_config.SysRef_Enable = 0
    def configure_adc_tiles(self, tile_num, pll_freq=500.00, sample_freq=5000.00):
            """
            Single ADC tile tune
            """
            # self.adc_tiles[tile_num].Reset()
            # self.adc_tiles[tile_num].StartUp()
            # time.sleep(0.5)
            # self.adc_tiles[tile_num].DynamicPLLConfig(1, pll_freq, sample_freq)
            self.adc_tiles[tile_num].SetupFIFOBoth(0)
            self.adc_tiles[tile_num].SetupFIFOBoth(1)
            # self.adc_tiles[tile_num].SetupFIFO(True)


    def configure_adc(self, dev_num, nyquist_zone=NYQUIST_ZONE, centre_freq=CENTRE_FREQ, event_src=EVENT_SRC, mixer_phase=0.0):
            """
            Single ADC block tune
            """         
            self.adc[dev_num].NyquistZone = nyquist_zone
            self.adc[dev_num].Dither = 1 # Selects if dither is enabled for the selected tile. Dither should be enabled unless the sample rate is under 0.75 times the maximum sampling rate for the RF-ADC.
            self.adc[dev_num].CalibrationMode = 2 # Mode 1, optimized for the input signal locates from 0.4 * Fs to Fs/2 Mode 2, optimized for the input signal locates from 0 to 0.4 * Fs
            self.adc[dev_num].CalFreeze = {
                'CalFrozen'             : 0, 
                'DisableFreezePin'      : 0, 
                'FreezeCalibration'     : 0
                }
            self.adc[dev_num].CoarseDelaySettings = {
                'CoarseDelay'           : 0, 
                'EventSource'           : event_src
                }
            self.adc[dev_num].MixerSettings = {
            'Freq'                  : centre_freq,
            'PhaseOffset'           : mixer_phase,
            'EventSource'           : event_src,
            'CoarseMixFreq'         : xrfdc.COARSE_MIX_BYPASS,
            'MixerMode'             : xrfdc.MIXER_MODE_R2C,
            'FineMixerScale'        : xrfdc.MIXER_SCALE_AUTO,
            'MixerType'             : xrfdc.MIXER_TYPE_FINE
        }
            self.adc[dev_num].ResetNCOPhase()

            self.adc[dev_num].QMCSettings = {
                'EnablePhase'           : 0,
                'EnableGain'            : 1,
                'GainCorrectionFactor'  : 1.99,
                'PhaseCorrectionFactor' : 0.0,
                'OffsetCorrectionFactor': 0,
                'EventSource'           : event_src
                }
            if not(event_src==xrfdc.EVNT_SRC_SYSREF):
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_MIXER)
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_CRSE_DLY)
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_QMC)
            
    def configure_adcs(self):
            """
            All ADCs blocks tune
            """
            bitvector = self.ACTIVE_ADC_TILES
            for n in range(MAX_ADC_TILES):
                self.configure_adc(n, self.nyquist_zone, self.centre_freq, self.event_src, self.phases[n])

    def configure_dac(self, dev_num, nyquist_zone=NYQUIST_ZONE, centre_freq=CENTRE_FREQ, event_src=EVENT_SRC, mixer_phase=0.0):
        """
        Single DAC block tune
        """
        
        # self.dac_tiles[tile_num].DynamicPLLConfig(1, pll_freq, sample_freq)
        self.dac[dev_num].NyquistZone = nyquist_zone
        self.dac[dev_num].Dither = 1 # Selects if dither is enabled for the selected tile. Dither should be enabled unless the sample rate is under 0.75 times the maximum sampling rate for the RF-ADC.
        self.dac[dev_num].CalibrationMode = 2 # Mode 1, optimized for the input signal locates from 0.4 * Fs to Fs/2 Mode 2, optimized for the input signal locates from 0 to 0.4 * Fs
        self.dac[dev_num].SetDACVOP(40500)
        self.dac[dev_num].CalFreeze = {
            'CalFrozen'             : 0, 
            'DisableFreezePin'      : 0, 
            'FreezeCalibration'     : 0
            }
        self.dac[dev_num].CoarseDelaySettings = {
            'CoarseDelay'           : 0, 
            'EventSource'           : event_src
            }
        self.dac[dev_num].MixerSettings = {
            'Freq'                  : centre_freq,
            'PhaseOffset'           : mixer_phase,
            'EventSource'           : event_src,
            'CoarseMixFreq'         : xrfdc.COARSE_MIX_BYPASS,
            'MixerMode'             : xrfdc.MIXER_MODE_C2R,
            'FineMixerScale'        : xrfdc.MIXER_SCALE_AUTO,
            'MixerType'             : xrfdc.MIXER_TYPE_FINE
        }
        self.dac[dev_num].QMCSettings = {
            'EnablePhase'           : 0,
            'EnableGain'            : 1,
            'GainCorrectionFactor'  : 1.99,
            'PhaseCorrectionFactor' : 0.0,
            'OffsetCorrectionFactor': 0,
            'EventSource'           : event_src
            }
        self.dac[dev_num].ResetNCOPhase()
        # self.dac_tiles[tile_num].SetupFIFO(True)

        if not(event_src==xrfdc.EVNT_SRC_SYSREF):
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_MIXER)
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_CRSE_DLY)
                self.adc[dev_num].UpdateEvent(xrfdc.EVENT_QMC)            

    def configure_dacs(self):
        """
        All DAC blocks tune
        """
        bitvector = self.ACTIVE_ADC_TILES
        for n in range(MAX_ADC_TILES):
            if (bitvector & 0x1):
                self.configure_dac(n, self.nyquist_zone, self.centre_freq, self.event_src, self.d_phases[n])
            bitvector = bitvector >> 1
            
        
    def get_custom_data(self, data_size):
        """
        Data from 4 (I + Q) channels, int16
        """
        AlignedCaptureSamples = np.zeros((1,len(self.adc_capture)),dtype=np.int16)
        self.internal_capture(AlignedCaptureSamples)
        custom_data = AlignedCaptureSamples[0][:self.data_size]
        return custom_data
    
    def handle_client_connection(self, client_socket):
        while True:
            # Receive data from client until terminator is found
            data = b''
            while True:
                chunk = client_socket.recv(1)  # Receive one byte at a time
                if chunk == b'\r' or chunk == b'\n':  # ASCII CR or LF character
                    break
                data += chunk

            if not data:
                break

            message = data.decode('utf-8')
            return message
        
    def handle_commands(self, commandList):
        for command_str in commandList:
            command, var = command_str.split()
            var = var.split('/')
            var = list(map(int, var))
            match command:
                case "fc":
                    self.centre_freq = var[0]
                    self.nyquist_zone = var[1]
                    self.d_centre_freq = [var[2], var[2], var[4], var[4]]
                    self.d_nyquist_zone = [var[3], var[3], var[5], var[5]]
                    self.configure_dacs()
                    self.configure_adcs()
                case "cal": # Only for ADCs
                    self.channels = var[0]
                    self.calibrate()
                case "phase":
                    self.phases = var
                    self.mts_sync()
                case "dphase":
                    self.d_phases = var
                    self.mts_sync()
                case "dataChan":
                    self.data_size = var[0]
                    oled.write("Data Size:\n{}".format(self.data_size))
                    # 
                case "dataStream":              
                    self.dataStream = var[0]
                case "da":
                    self.da = var[0]
                    match self.da
                        case "all": # DACs = ADCs params
                            self.d_centre_freq[:] = self.centre_freq
                            self.d_nyquist_zone[:] = self.nyquist_zone
                            self.dac0_enable.on()
                            self.dac1_enable.on()
                            self.trig_cap.off() 
                            self.mts_sync()
                            self.trig_cap.on() 
                            self.trig_cap.off() 
                        case "dac": # DACs = DACs only
                            self.d_centre_freq[:] = self.d_centre_freq[0]
                            self.d_nyquist_zone[:] = self.d_nyquist_zone[0]
                            self.dac0_enable.on()
                            self.dac1_enable.on()
                            self.trig_cap.off() 
                            self.mts_sync()
                            self.trig_cap.on() 
                            self.trig_cap.off() 
                        case "none": # DACs =/= ADCs
                            self.configure_dacs()
                            self.configure_adcs()
                case "dac0":
                    self.dac_signal[0] = var
                    dac_data_mem_write(self.dac_signal[0], self.dac0_player)
                case "dac1":
                    self.dac_signal[2] = var
                    dac_data_mem_write(self.dac_signal[2], self.dac1_player)
                case _:
                    oled.write("Wrong command:\n{}".format(command))            
                    
    def cphase(self, rawData):
        # Calibrates phases using FFT phase estimation
        # Takes the maximum of the abs value of the FFT of the signal
        # and calculates its angle, then calculates the right phase shift
        # with respect to the first rawData vector.

        # INPUTS:
        # rawData: 4 X n raw signal matrix

        # OUTPUTS:
        # fixed_rawData: 4 X n aligned signal matrix
        # weights: 4 X 1 weights vector for phase alignment

        max_val = np.zeros(4, dtype=np.cdouble)
        rawFt = np.zeros(len(rawData[:,1]), dtype=np.cdouble)
        angs = np.zeros(4, dtype=int)
        max_idx = np.zeros(4, dtype=int)
        for i in range(4):
            rawFt = np.fft.fftshift(np.fft.fft(rawData[i, :]))
            max_idx[i] = np.argmax(np.abs(rawFt))
            max_val[i] = rawFt[max_idx[i]]
        angs = np.angle(max_val)
        cal_angs = angs[0] - angs

        weights = np.exp(1j * cal_angs)

        return weights
    
    def calibrate(self, channels=CHANNELS):
        coefs_i = [-90, -90, 90, 90]
        self.phases = coefs_i
        self.mts_sync()
        self.mts_sync()

        N = len(self.adc_capture) // self.channels

        # Data acq from FPGA
        AlignedCaptureSamples = np.zeros((1,len(self.adc_capture)),dtype=np.int16)
        self.internal_capture(AlignedCaptureSamples)

        ShapedCaptureSamples = np.zeros((channels, N), dtype=np.int16)
        for i in range(self.channels):
            ShapedCaptureSamples[i] = AlignedCaptureSamples[0][i::self.channels]

        iqData = np.zeros((4, N), dtype=np.cdouble)
        idx = 0
        for i in range(0, self.channels, 2):
            iqData[idx] = np.conjugate(ShapedCaptureSamples[i] - 1j * ShapedCaptureSamples[i+1])
            idx = idx + 1
        np.angle(self.cphase(iqData), deg=True)
        coefs = np.zeros((4, 1), dtype=np.double)
        coefs = np.angle(self.cphase(iqData), deg=True)

        coefs_new = coefs_i + coefs
        coefs_new = np.clip(coefs_new, -179, 179)
        self.phases = coefs_new
        self.mts_sync()
        self.mts_sync()

        # Data acq from FPGA
        AlignedCaptureSamples = np.zeros((1,len(self.adc_capture)),dtype=np.int16)
        self.internal_capture(AlignedCaptureSamples)

        ShapedCaptureSamples = np.zeros((self.channels, N), dtype=np.int16)
        for i in range(self.channels):
            ShapedCaptureSamples[i] = AlignedCaptureSamples[0][i::self.channels]

        iqData = np.zeros((4, N), dtype=np.cdouble)
        idx = 0
        for i in range(0, self.channels, 2):
            iqData[idx] = np.conjugate(ShapedCaptureSamples[i] - 1j * ShapedCaptureSamples[i+1])
            idx = idx + 1

        coefs = np.zeros((4, 1), dtype=np.double)
        coefs = np.angle(self.cphase(iqData), deg=True)
        oled.write('Ph:{}'.format(np.round(coefs_new, 1)))

    def dac_data_mem_write(self, signal, mem):
        """
        Aligns the signal to the DAC memory and writes it to the memory
        """
        N = len(signal)
        mem_size = len(mem)
        if N > mem_size: # Truncate signal to fit memory
            signal = signal[:mem_size]
        else: # Duplicate signal to fill memory
            # signal = np.pad(signal, (0, mem_size-N), 'constant') # zero padding
            signal = np.tile(signal, mem_size//N + 1)[:mem_size]            
        mem[:] = np.int16(signal)        
        
 # -------------------------------------------------------------------------------------------------       
def resolve_binary_path(bitfile_name):
    """ this helper function is necessary to locate the bit file during overlay loading"""
    if os.path.isfile(bitfile_name):
        return bitfile_name
    elif os.path.isfile(os.path.join(MODULE_PATH, bitfile_name)):
        return os.path.join(MODULE_PATH, bitfile_name)
    else:
        raise FileNotFoundError(f'Cannot find {bitfile_name}.')
# -------------------------------------------------------------------------------------------------