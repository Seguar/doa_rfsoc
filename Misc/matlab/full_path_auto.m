clear
clc
clf
% addpath 'C:\Program Files\Agilent\89600 Software 22.2\89600 VSA Software\Help\Signals'
% addpath 'C:\Users\sega-\OneDrive\Documents\MATLAB\Packet-Creator-VHT'
% figure;
set(0,'DefaultFigureWindowStyle','docked')
plotbrowser
drawnow
%% Variables
dbmin = 40; % Limits of polar plot
dbmax = 60;
gain = 0; % Pluto gain -89:0
debug = 1; % Time
pluto = 1; % SDR TX
vsa = 0; % Transfer to VSA
fcPluto = 5.7e9; 
dataChan = 49152; % Samples per channel (buffer size)
scan_res = 5; % scan resolution
%% Constants
fc = fcPluto;
fsRfsoc = 125e6;
ovp = 0.0; % percent of overlapping samples [0,1]
c = physconst('LightSpeed'); % propagation velocity [m/s]
lambda = c / fcPluto; % wavelength
d = lambda/2; % spacsing antenna elemnts
min_ang = -90; % min scanning angle
max_ang = 90; % max scanning angle
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
if vsa
    if not(isempty(instrfind))
        delete(instrfind)
    end
    format long g
    pcvsa = visa('keysight', 'TCPIP0::localhost::hislip1::INSTR');
    
    % pcvsa = visa('keysight', 'TCPIP0::localhost::hislip3::INSTR');
    % pcvsa.InputBufferSize = 8388608; 
    pcvsa.InputBufferSize = 20000; 
    pcvsa.OutputBufferSize = 20000;
    pcvsa.ByteOrder = 'littleEndian';
    fopen(pcvsa);
    % fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\8ch_cw.setx']));
    % fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\setup_8ch_wodsp.setx']));
    fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\1ch.setx']));
    fprintf(pcvsa, ':INIT:CONT ON');
    fprintf(pcvsa, ':TRIG:SOUR IMM'); % Set trigger source to immediate
    fprintf(pcvsa, ':TRIG:IMM');      % Trigger immediate measurement
end
%% Pluto tx
[packet, fs_Signal]= Signal_Gen();
zeros_N =  2000; %10e4;     % Zeros between packets
sig_org = [(packet(:,1)-1j*packet(:,2))'  zeros(1,zeros_N)]';
fs      = 60e6;    % Depand on bandwidth See User Manual
sig_org   = sig_org(1:floor(length(sig_org)/24)*24);
fs0 = fs_Signal;

sig_new    = sig_org/max(abs(sig_org));
sig_Pluto = resample(sig_org,fs,fs0);

plutoRfsoc = resample(sig_new(1:end-zeros_N), fsRfsoc, fs);
plutoRfsocPre = plutoRfsoc(1:1000);
%% CW
 sw = dsp.SineWave;
 sw.Amplitude = 1;
 sw.Frequency = 10e6;
 sw.ComplexOutput = true;
 sw.SampleRate = fs_Signal;
 sw.SamplesPerFrame = 50000;
 txWaveform = sw();  
%%
if pluto == 1
    tx = sdrtx('Pluto');
    tx.ShowAdvancedProperties = true;
    tx.CenterFrequency = fcPluto;
    tx.BasebandSampleRate = fs_Signal;
    tx.Gain = gain;
    transmitRepeat(tx,sig_new);
%     transmitRepeat(tx,txWaveform);
end
%% Plot
curr_data_size = dataChan * 8;
curr_data_size_bytes = typecast(uint64(curr_data_size), 'uint8');

channels = 8;
raw = zeros(channels, curr_data_size / 8);

while(true)
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
    %% Data convert
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
    
    %% Beamforming
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
%     WBF_doc_MVDR = ((rawData_doc_MVDR*[1,1,1,1]'));
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

df2 = cPhSh(-estimated_angle_old);
an2(1) = deg2comp(-estimated_angle);
an2(2) = deg2comp(df2*2);
an2(3) = deg2comp(df2*3);
an2(4) = deg2comp(df2*3);
rawDataAdj2(:,1) = rawData(:,1)*an2(1);
rawDataAdj2(:,2) = rawData(:,2)*an2(2);
rawDataAdj2(:,3) = rawData(:,3)*an2(3);
rawDataAdj2(:,4) = rawData(:,4)*an2(4);
rawSum2 = sum(rawDataAdj2, 2);
%% Cutter
cutCoef = 0.95;
co = abs(conv(WBF_doc_MVDR, plutoRfsocPre));
cutTrh = max(co)*cutCoef;
cutInd = find(co > cutTrh);

cutInds = cutInd(1)-length(plutoRfsocPre)*2 + 1:cutInd(1) + length(plutoRfsocPre) + length(plutoRfsoc) - 1;

if (cutInds(1) < 1)
    cutInds = cutInds + length(plutoRfsoc);
elseif (cutInds(end) > length(WBF_doc_MVDR))
    disp('No signal')
    continue
else
    cutInds = cutInds;
end
% cutInds = 1:dataChan;
dataCut = rawSum(cutInds);

rawData_no_noise = rawData(cutInds,:);
%% Matlab MVDR FUNC
R = rawData_no_noise'*rawData_no_noise;
eigen = eig(R);
minEig = eigen(1);
maxEig = eigen(end);

estimator = phased.MVDREstimator('SensorArray',ula,...
        'OperatingFrequency',fc,'ScanAngles',scan_axis,...
        'DOAOutputPort',true,'NumSignals',1);
[yspec, estimated_angle] = estimator(rawData_no_noise'*rawData_no_noise);
if abs(estimated_angle) <= 0
    beamformer = phased.MVDRBeamformer('SensorArray',ula,...
        'PropagationSpeed',c,'OperatingFrequency',fc,...
        'Direction',[estimated_angle;0],'WeightsOutputPort',true, ...
        'TrainingInputPort',false, 'DiagonalLoadingFactor', maxEig*3e-3);
else
    beamformer = phased.MVDRBeamformer('SensorArray',ula,...
        'PropagationSpeed',c,'OperatingFrequency',fc,...
        'Direction',[estimated_angle;0],'WeightsOutputPort',true, ...
        'TrainingInputPort',false);
end
[bfs,w_est_ang] = beamformer(rawData_no_noise); 
w_correction = ones(4,1);
for i = 2 : 4
    if sum(real(rawData_no_noise(:,1)*w_est_ang(1)').*real(rawData_no_noise(:,i)*w_est_ang(i)'))< 0
        w_correction(i) = -1;
    end       
end

w_est_ang = w_est_ang .* w_correction;
dataCut = sum(rawData_no_noise.*w_est_ang',2);
%% Save and Play
splt = @(x) [num2str(fix(x)) '_' num2str(abs(rem(x,1)*10))]; % Separates Numbers Left & Right Of The Decimal
angl = splt(estimated_angle);
name = ['8ch_Angle_' num2str(angl) '_Power_' num2str(fix(val))];
% disp(name)
%%
if vsa
    VSA_load_m([dataCut], fsRfsoc,pcvsa, name, 20e6)
    % VSA_load_m([(rawData(cutInds,:)) dataCut rawData(cutInds,:)*weights2 sum(rawData(cutInds,:), 2) rawData(cutInds,:)*(w_est_ang+weights2)/2], fsRfsoc,pcvsa, name)
    input('Next measurments')
    
    
end
%% Plots
for i = 1:4
    powCh(i) = powCalc(rawData(:,i));
    lgd{i} = sprintf('Ch%d, power: %g', i, powCh(i));
    if (yspec_new(i,idx) < powCh(i))
        yspec_new(i,idx) = powCh(i);
    end
end

powMVDR = powCalc(dataCut);
powSUM = powCalc(sum(rawData, 2));

[weights, fixRaw] = cphase(rawData);
powSUM2 = powCalc(sum(fixRaw,2));

powBF = powCalc(rawSum);
powBF2 = powCalc(rawSum2);
% powST = powCalc(rawData, weights2);
% powMVDRY = powCalc(rawData, weights);
powRef = sum(yspec_new(1:4,idx))/4+6;
% 
% if (yspec_new(5,idx) < powMVDR)
yspec_new(5,idx) = powMVDR;
% end
% 
% if (yspec_new(6,idx) < powSUM)
yspec_new(6,idx) = powSUM;
% end
% 
% if (yspec_new(7,idx) < powSUM2)
yspec_new(7,idx) = powSUM2;
% end
% 
% if (yspec_new(8,idx) < powBF)
yspec_new(8,idx) = powBF;
% end
% 
% 
% if (yspec_new(9,idx) < powRef)
yspec_new(9,idx) = powRef;
% end
% 
% if (yspec_new(10,idx) < powBF2)
yspec_new(10,idx) = powBF2;
% end
% if (yspec_new(7,idx) < powST)
% yspec_new(7,idx) = powST;
% end
% 
% if (yspec_new(8,idx) < powMVDRY)
% yspec_new(8,idx) = powMVDRY;
% end
polarplot(deg2rad(scan_axis), yspec_new)
title(['Estimated angle: ' num2str(estimated_angle)])
ax = gca;
ax.ThetaZeroLocation = 'top'; % Set 0 degree angle at the top
ax.ThetaDir = 'clockwise';    % Rotate angles clockwise
ax.ThetaLim = [min_ang, max_ang];
ax.ThetaTick = [min_ang:scan_res:max_ang];

rlim([dbmin dbmax])
ax.RTick = [dbmin:1.5:dbmax];
lgd{5} = (sprintf('MVDR, power: %g dB', powMVDR));
lgd{6} = (sprintf('SUM, power: %g dB', powSUM));
lgd{7} = (sprintf('SUM fftshift=DOA (%d) , power: %g dB', estimated_angle, powSUM2));
lgd{8} = (sprintf('BF shift=DOA (%d) power: %g dB', estimated_angle, powBF));

lgd{9} = (sprintf('Reference power: %g dB', powRef));
lgd{10} = (sprintf('BF2 shift=DOA (%d) power: %g dB', estimated_angle, powBF2));
% lgd{7} = (sprintf('Steering, power: %g', powST));
% lgd{8} = (sprintf('MVDRY, power: %g', powMVDRY));

legend(lgd, 'Location', 'best')
legend('boxoff')

%%
 
    if (debug)
        toc
    end
    disp(estimated_angle)
end
figure;plot(scan_axis, yspec_new','DisplayName','yspec_new')
ylim([20 40])
% %%
% figure
% for i = 1:6
%     plot(scan_axis, yspec_new(i,:))
%     hold on
% end