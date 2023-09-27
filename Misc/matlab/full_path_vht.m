clear
clc
clf

% addpath 'C:\Program Files\Agilent\89600 Software 22.2\89600 VSA Software\Help\Signals'
% addpath 'C:\Users\sergei\Documents\MATLAB\Examples\R2021b\wlan'
addpath 'C:\Users\sergei\Documents\MATLAB\Examples\R2021b\wlan\AnalyzePacketsExample'
% figure;
set(0,'DefaultFigureWindowStyle','docked')
plotbrowser
drawnow

dbmin = 27;
dbmax = 60;
gain = 0; % Pluto gain -89:0

%% Constants
debug = 1;
pluto = 1;
vsa = 0;
cutter = 0; % For OFDM signals
fcPluto = 5.7e9; 


fc = fcPluto;
fsRfsoc = 125e6;
% dataChan = 49152; % Samples per channel (buffer size)
dataChan = 2^17; % Samples per channel (buffer size)
ovp = 0.0; % percent of overlapping samples [0,1]
c = physconst('LightSpeed'); % propagation velocity [m/s]
lambda = c / fcPluto; % wavelength
d = lambda/2; % spacsing antenna elemnts
min_ang = -90; % min scanning angle
max_ang = 90; % max scanning angle
scan_res = 5; % scan resolution
% scan_res = 2.5; % scan resolution
scan_axis = min_ang:scan_res:max_ang; % angles axis
num_elements = 4;
wavelength = physconst('LightSpeed')/fc;
ula = phased.ULA('NumElements',num_elements,'ElementSpacing',d);
yspec_new = zeros(10, length(scan_axis));
weights = zeros(4,1);

%% AFunctions
cPhSh = @(a) 360*(lambda/2)*sind(a)/lambda; % Calculation of constant phase shift between elements
deg2comp = @(a) exp(1i*deg2rad(a)); % Degrees to complex (1 round) convertion
powCalc = @(x) round(max(db(fftshift(fft(x))))/2, 1); % Power from FFT calculations
%% VSA Connection
if (vsa)
    if not(isempty(instrfind))
        delete(instrfind)
    end
    format long g
    % pcvsa = visa('keysight', 'TCPIP0::localhost::hislip1::INSTR');
    
    pcvsa = visa('keysight', 'TCPIP0::localhost::hislip1::INSTR');
    % pcvsa.InputBufferSize = 8388608; 
    pcvsa.InputBufferSize = 20000; 
    pcvsa.OutputBufferSize = 20000;
    pcvsa.ByteOrder = 'littleEndian';
    fopen(pcvsa);
    fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\preset.setx']));
    fprintf(pcvsa, ':INIT:CONT ON');
    fprintf(pcvsa, ':TRIG:SOUR IMM'); % Set trigger source to immediate
    fprintf(pcvsa, ':TRIG:IMM');      % Trigger immediate measurement
end
%% Pluto tx data
cbw = 'CBW20';
type = 'VHT'; % VHT HT | HESU HETB (w/o EVM)
fsPluto = 60e6;
MCS = 4;
zeros_N = 5000;

% [sig, cfg] = vhtGen(cbw, fsPluto, MCS, zeros_N, vsa);
% [sig, cfg] = hesuGen(cbw, fsPluto, MCS, zeros_N, vsa);
[sig, cfg] = wlanGen(cbw, fsPluto, MCS, type, vsa);

refSym = wlanReferenceSymbols(cfg); % Reference constellation
ind = wlanFieldIndices(cfg);
% sig = resample(sig(1:end-zeros_N), fsPluto, wlanSampleRate(cbw));
sig = [sig; zeros(1,zeros_N)'];
sig_re = resample(sig, fsRfsoc, fsPluto);
preamble = resample(sig(ind.LSTF(1):ind.LSTF(2)), fsRfsoc, fsPluto);

analyzer = WaveformAnalyzer;
% analyzer.EnergyDetection = 1;
analyzer.PilotGainTracking = 1;
% analyzer.DCBlocking = 1;
analyzer.PilotTimeTracking = 0;
analyzer.PilotTrackingWindow = 9;
analyzer.EqualizationMethod = 'MMSE';
% analyzer.SuppressWarnings = 0;
process(analyzer,sig,cbw,fsPluto);
detectionSummary(analyzer);

process(analyzer,sig_re,cbw,fsRfsoc);
detectionSummary(analyzer);
%% CW
 sw = dsp.SineWave;
 sw.Amplitude = 1;
 sw.Frequency = 10e6;
 sw.ComplexOutput = true;
 sw.SampleRate = fcPluto;
 sw.SamplesPerFrame = 50000;
 txWaveform = sw();  
%%
if pluto == 1
    tx = sdrtx('Pluto');
    tx.ShowAdvancedProperties = true;
    tx.CenterFrequency = fcPluto;
    tx.BasebandSampleRate = fsPluto;
    tx.Gain = gain;
    transmitRepeat(tx,sig);
%     transmitRepeat(tx,txWaveform);
end
%% TCP prep
curr_data_size = dataChan * 8;
curr_data_size_bytes = typecast(uint64(curr_data_size), 'uint8');

channels = 8;
raw = zeros(channels, curr_data_size / 8);

% while(true)
    %% TCP
    if (debug)
        disp('----------------------------')
        tic
    end

    % Define the server IP and port (should match the server settings)
    server_ip = 'pynq'; % Use the appropriate IP address or hostname
    server_port = 4000; % Use the same port number used in the Python server
    
    tcp_client = tcpclient(server_ip, server_port);
    write(tcp_client, curr_data_size_bytes);
    
    % Read the data from the server
    data_bytes = read(tcp_client, curr_data_size * 2, 'int8'); %tcp can trnsmit only int8
    % Unpack the received binary data into Int16 array
    data = typecast(data_bytes, 'int16');
%     %% Data convert
    dataLen = curr_data_size/channels;
    rawData = zeros(curr_data_size/8, channels/2);
    
    for i=1:channels
        curr_data = data(i:channels:end);
        len = length(raw(i, :)) - length(curr_data);
        old_data = raw(i, end-len+1:end);
        raw(i, :) = [old_data data(i:channels:end)];
    end

    rawc = double(raw);
    idd = 1;
    for n=1:2:channels
        rawData(:, idd) = rawc(n,:) - 1i*rawc(n+1,:);
        idd = idd + 1;
    end

    %% Autocorralation matrix calculation
    R = rawData'*rawData;
    %% MVDR
    Rx = R;    %Data covarivance matrix
    Rx_Inv = inv(Rx);           %Inverse of covariance matrix
    A = zeros(num_elements,1);

    %% Plot data
    yspec_old = zeros(1, length(scan_axis));
    for t=1:length(scan_axis)
        A = exp(-1j*2*pi*d*(0:num_elements-1)'*sind(scan_axis(t))/lambda);
        B = A'*Rx_Inv*A;
        yspec_old(t) = 10*log10(abs(1/B));
    end
    [val, idx] = max(yspec_old);
    
    %% Beamforming manual
    estimated_angle_old = scan_axis(idx); %Insert Estaimated angle got by MVDR here
    a = exp(1j*2*pi*d*(0:num_elements-1)'*sind(estimated_angle_old)/lambda);
    weights = (Rx^-1)*a/(a'*Rx_Inv*a); % weights to load to the antenna output
    weights2 = exp(1j*2*pi*d*(0:num_elements-1)'*sind(estimated_angle_old)/lambda);
    
    %% Matlab MVDR FUNC
    estimator = phased.MVDREstimator('SensorArray',ula,...
            'OperatingFrequency',fc,'ScanAngles',scan_axis,...
            'DOAOutputPort',true,'NumSignals',1);
    [yspec, estimated_angle] = estimator(rawData'*rawData);
    beamformer = phased.MVDRBeamformer('SensorArray',ula,...
        'PropagationSpeed',c,'OperatingFrequency',fc,...
        'Direction',[estimated_angle;0],'WeightsOutputPort',true, ...
        'TrainingInputPort',false);
    [bfs,w_est_ang] = beamformer(rawData); 
    
    rawData_doc_MVDR(:,1) = ifft(fft(rawData(:,1))*w_est_ang(1));
    rawData_doc_MVDR(:,2) = ifft(fft(rawData(:,2))*w_est_ang(2));
    rawData_doc_MVDR(:,3) = ifft(fft(rawData(:,3))*w_est_ang(3));
    rawData_doc_MVDR(:,4) = ifft(fft(rawData(:,4))*w_est_ang(4));
    WBF_doc_MVDR = sum(rawData_doc_MVDR, 2);

%% Angles
df = cPhSh(-estimated_angle);
an(1) = 1;
an(2) = deg2comp(df*1);
an(3) = deg2comp(df*2);
an(4) = deg2comp(df*3);
rawDataAdj(:,1) = rawData(:,1)*an(1);
rawDataAdj(:,2) = rawData(:,2)*an(2);
rawDataAdj(:,3) = rawData(:,3)*an(3);
rawDataAdj(:,4) = rawData(:,4)*an(4);
rawSum = sum(rawDataAdj, 2);

%% Cutter
if (cutter)
    cutCoef = 0.99;
%     plutoRfsoc = resample(sig_new(1:end-zeros_N), fsRfsoc, fs);
    
%     plutoRfsocPre = plutoRfsoc(1:1000);
    co = abs(conv(rawSum, preamble));
    cutTrh = max(co)*cutCoef;
    cutInd = find(co > cutTrh);
    
    cutInds = cutInd(1)-length(preamble)*1.5:cutInd(1) + length(sig_re);
    
    if (cutInds(1) < 1)
        cutInds = cutInds + length(sig_re);
    elseif (cutInds(end) > length(WBF_doc_MVDR))
        disp('No signal')
%         continue
    else
        cutInds = cutInds;
    end
else cutInds = 1:dataChan;
end 
dataCut = rawSum(cutInds);
% Checker
plot(real(rawSum))
hold on
dataa = zeros(size(rawSum));
dataa(cutInds) = dataCut;
plot(real(dataa)) 
legend
%% EVM
% dataCut = resample(dataCut, fsPluto, fsRfsoc);
% 
% tOff = wlanSymbolTimingEstimate(dataCut(ind.LSTF(1):ind.LSIG(2),:),cfg.ChannelBandwidth);
% vhtltf = dataCut(tOff+(ind.VHTLTF(1):ind.VHTLTF(2)),:);
% vhtltfDemod = wlanVHTLTFDemodulate(vhtltf,cfg);
% chanEstBF = wlanVHTLTFChannelEstimate(vhtltfDemod,cfg);
% vhtdata = dataCut(tOff+(ind.VHTData(1):ind.VHTData(2)),:);
% [~,~,symBF] = wlanVHTDataRecover(vhtdata,chanEstBF,0,cfg,...
%     'PilotPhaseTracking','PreEQ');
% % % bfConst = vhtBeamformingPlotConstellation(symBF,refSym, ...
% % %     'Beamformed Transmission Equalized Symbols');
% EVM = comm.EVM;
% EVM.AveragingDimensions = [1 2]; % Average over all subcarriers and symbols
% EVM.MaximumEVMOutputPort = true;
% EVM.ReferenceSignalSource  = 'Estimated from reference constellation';
% EVM.ReferenceConstellation = refSym;
% % % [rmsEVMSE,maxEVMSE] = EVM(symSE); % EVM using spatial expansion
% % % [rmsEVMBF,maxEVMBF] = EVM(symBF) % EVM using beamforming
% EVM(symBF) % EVM using beamforming
% %     fprintf(['Spatial stream %d EVM:\n' ...
% %         '  Spatial expansion:    %2.1f%% RMS, %2.1f%% max\n' ...
% %         '  Transmit beamforming: %2.1f%% RMS, %2.1f%% max\n'], ...
% %         i,rmsEVMSE(1),maxEVMSE(i),rmsEVMBF(i),maxEVMBF(i));
%% Save and Play
splt = @(x) [num2str(fix(x)) '_' num2str(abs(rem(x,1)*10))]; % Separates Numbers Left & Right Of The Decimal
angl = splt(estimated_angle);
name = ['Angle_' num2str(angl) '_Power_' num2str(fix(val))];
% disp(name)
%%
if (vsa)
    VSA_load_m(dataCut, fsRfsoc,pcvsa, name)
    % VSA_load_m([(rawData(cutInds,:)) dataCut rawData(cutInds,:)*weights2 sum(rawData(cutInds,:), 2) rawData(cutInds,:)*(w_est_ang+weights2)/2], fsRfsoc,pcvsa, name)
%     input('Next measurments')    
end
%% Plots
for i = 1:4
    powCh(i) = powCalc(rawData(:,i));
    lgd{i} = sprintf('Ch%d, power: %g', i, powCh(i));
    if (yspec_new(i,idx) < powCh(i))
        yspec_new(i,idx) = powCh(i);
    end
end

powMVDR = powCalc(WBF_doc_MVDR);
powSUM = powCalc(sum(rawData, 2));

[weights, fixRaw] = cphase(rawData);
powSUM2 = powCalc(sum(fixRaw,2));

powBF = powCalc(rawSum);


if (yspec_new(5,idx) < powMVDR)
yspec_new(5,idx) = powMVDR;
end

if (yspec_new(6,idx) < powSUM)
yspec_new(6,idx) = powSUM;
end

if (yspec_new(7,idx) < powSUM2)
yspec_new(7,idx) = powSUM2;
end

if (yspec_new(8,idx) < powBF)
yspec_new(8,idx) = powBF;
end

powRef = sum(yspec_new(1:4,idx))/4+6;
if (yspec_new(9,idx) < powRef)
yspec_new(9,idx) = powRef;
end

% 
% polarplot(deg2rad(scan_axis), yspec_new)
% ax = gca;
% ax.ThetaZeroLocation = 'top'; % Set 0 degree angle at the top
% ax.ThetaDir = 'clockwise';    % Rotate angles clockwise
% ax.ThetaLim = [min_ang, max_ang];
% ax.ThetaTick = [min_ang:scan_res:max_ang];
% rlim([dbmin dbmax])
% ax.RTick = [dbmin:1.5:dbmax];
% 
% lgd{5} = (sprintf('MVDR, power: %g dB', powMVDR));
% lgd{6} = (sprintf('SUM, power: %g dB', powSUM));
% lgd{7} = (sprintf('SUM fftshift=DOA (%d) , power: %g dB', estimated_angle, powSUM2));
% lgd{8} = (sprintf('BF shift=DOA (%d) power: %g dB', estimated_angle, powBF));
% lgd{9} = (sprintf('Reference power: %g dB', powRef));
% 
% 
% legend(lgd, 'Location', 'best')
% legend('boxoff')

%%
% process(analyzer,rawData(cutInds,1),cbw,fsRfsoc);
% process(analyzer,rawData(cutInds,2),cbw,fsRfsoc);
% process(analyzer,rawData(cutInds,3),cbw,fsRfsoc);
% process(analyzer,rawData(cutInds,4),cbw,fsRfsoc);
% dataCut = resample(dataCut, fsPluto, fsRfsoc);
dataCut = conj(dataCut);
process(analyzer,dataCut,cbw,fsRfsoc);
detectionSummary(analyzer);
plotConstellation(analyzer, 1)
% userEVM(analyzer,1);
% plotConstellation(analyzer,1);
    if (debug)
        toc
    end
    savevsarecording_m('data', dataCut, fsRfsoc, 0e6, 25e6)
    
    disp(estimated_angle)
% figure

%     process(cfg,dataCut,cbw,fsRfsoc);    
%     process(analyzer,dataCut,cbw,sr);    
%     detectionSummary(cfg);
% end
% figure;plot(scan_axis, yspec_new','DisplayName','yspec_new')
% ylim([20 40])
% %%
% figure
% for i = 1:6
%     plot(scan_axis, yspec_new(i,:))
%     hold on
% end