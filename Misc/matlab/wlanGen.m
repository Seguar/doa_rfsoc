function [sig, cfg] = wlanGen(cbw, fs, MCS, type, vsa)
cfg = eval(['wlan' type 'Config']);
cfg.ChannelBandwidth = cbw;
cfg.MCS = MCS; % 16-QAM, rate 3/4
cfg.GuardInterval = 'Short';
% cfg.ChannelCoding = 'LDPC';
bw = wlanSampleRate(cbw);
% rng(0); % Set random state for repeatability
% data = randi([0 1],zeros_N,1);
% data = [0;1;0;1]; % Nonrandom data
% data = zeros(64,1);
data = 0;
% Generate waveform
txd = wlanWaveformGenerator(data,cfg);
sig = resample(txd, fs, bw); % Resampling to TX freq and adding gap between

if (vsa)
    addpath 'C:\Program Files\Agilent\89600 Software 22.2\89600 VSA Software\Help\Signals'
    savevsarecording(type, sig, fs, 0e6)
end