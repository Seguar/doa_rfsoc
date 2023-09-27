% clear
clc
clf

% addpath 'C:\Program Files\Agilent\89600 Software 22.2\89600 VSA Software\Help\Signals'
% addpath 'C:\Users\sergei\Documents\MATLAB\Examples\R2021b\wlan'
% addpath 'C:\Users\sergei\Documents\MATLAB\Examples\R2021b\wlan\AnalyzePacketsExample'
% figure;
addpath 'C:\Users\sergei\Documents\HFIC\Packet-Creator-VHT'
set(0,'DefaultFigureWindowStyle','docked')
% plotbrowser
drawnow

dbmin = 27;
dbmax = 60;
gain = -10; % Pluto gain -89:0

%% Constants
debug = 1;
pluto = 1;
cutter = 1; % For OFDM signals
vsa = 1;
Raw_sum_flag = 0;
steering_flag = 0;
bw = 31.25e6; 

% fcPluto = 5.7e9; 
fcPluto = 325e6; 


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
scan_res = 0.1; % scan resolution
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
splt = @(x) [num2str(fix(x)) '_' num2str(abs(rem(x,1)*10))]; % Separates Numbers Left & Right Of The Decimal

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
    if (Raw_sum_flag)
        fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\1ch_fast.setx']));
    else
        fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\1ch_fast.setx']));
%         fprintf(pcvsa, sprintf(':MMEMory:LOAD:SETup "%s"', [pwd '\4ch_fast.setx']));
    end
    fprintf(pcvsa, ':INIT:CONT ON');
    fprintf(pcvsa, ':TRIG:SOUR IMM'); % Set trigger source to immediate
    fprintf(pcvsa, ':TRIG:IMM');      % Trigger immediate measurement
end
%% Pluto tx data
fsPluto = 60e6; % Should be same as fs_Signal
[packet, fs_Signal]= Signal_Gen();
zeros_N =  50000; %10e4;     % Zeros between packets
sig_org = [(packet(:,1)-1j*packet(:,2))'  zeros(1,zeros_N)]';

% sig_org   = sig_org(1:floor(length(sig_org)/24)*24);
% sig_new = sig_org;
sig_new    = sig_org/max(abs(sig_org));
sig_re = resample(sig_new(1:end-zeros_N), fsRfsoc, fsPluto);
preamble = sig_re(1:2000);
%%
if pluto == 1
    tx = sdrtx('Pluto');
    tx.ShowAdvancedProperties = true;
    tx.CenterFrequency = fcPluto;
    tx.BasebandSampleRate = fsPluto;
    tx.Gain = gain;
    transmitRepeat(tx,sig_new);
end
%% TCP prep
curr_data_size = dataChan * 8;
curr_data_size_bytes = typecast(uint64(curr_data_size), 'uint8');
channels = 8;
raw = zeros(channels, curr_data_size / 8);
% Define the server IP and port (should match the server settings)
server_ip = 'pynq'; % Use the appropriate IP address or hostname
server_port = 4000; % Use the same port number used in the Python server
dataLen = curr_data_size/channels;
%% Main
while(true)
    %% TCP
    if (debug)
        disp('----------------------------')
        tic
    end
%     transmitRepeat(tx,sig_new);
    tcp_client = tcpclient(server_ip, server_port);
    write(tcp_client, curr_data_size_bytes);    
    % Read the data from the server
    data_bytes = read(tcp_client, curr_data_size * 2, 'int8'); %tcp can trnsmit only int8
%     release(tx)
    % Unpack the received binary data into Int16 array
    data = typecast(data_bytes, 'int16');
%      %% Data convert    
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
disp(estimated_angle)
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
        cutCoef = 0.95;
        co = abs(conv(rawSum, preamble));
        cutTrh = max(co)*cutCoef;
        cutInd = find(co >= cutTrh);        
%         cutInds = cutInd(1) - length(preamble)/2:cutInd(1) + length(sig_re) - length(preamble)/2 + round(zeros_N/10);        
        cutInds = cutInd(1) - length(preamble):cutInd(1) + length(sig_re);        
        if (cutInds(1) < 1)
            cutInds = cutInds + length(sig_re);
        elseif (cutInds(end) > length(WBF_doc_MVDR))
            disp('No signal')
            continue
        else
            cutInds = cutInds;
        end
    else cutInds = 1:dataChan;
    end
    rawSum = rawSum(cutInds);
%     dataCut = rawSum(cutInds);
%     Checker
%     clf
%     plot(real(rawSum))
%     hold on
%     dataa = zeros(size(rawSum));
%     dataa(cutInds) = dataCut;
%     plot(real(dataa)) 
%     legend
    if cutInds(end) <= dataChan && cutInds(1) >= 1
        rawData_no_noise = rawData(cutInds,:);
        %% Matlab MVDR FUNC
        maxEig = max(eig(rawData_no_noise'*rawData_no_noise));
        estimator = phased.MVDREstimator('SensorArray',ula,...
                'OperatingFrequency',fc,'ScanAngles',scan_axis,...
                'DOAOutputPort',true,'NumSignals',1);
        [yspec, estimated_angle] = estimator(rawData_no_noise'*rawData_no_noise);
    %     if abs(estimated_angle) <= 0
    %         beamformer = phased.MVDRBeamformer('SensorArray',ula,...
    %             'PropagationSpeed',c,'OperatingFrequency',fc,...
    %             'Direction',[estimated_angle;0],'WeightsOutputPort',true, ...
    %             'TrainingInputPort',false, 'DiagonalLoadingFactor', maxEig*3e-3);
    %     else
            beamformer = phased.MVDRBeamformer('SensorArray',ula,...
                'PropagationSpeed',c,'OperatingFrequency',fc,...
                'Direction',[estimated_angle;0],'WeightsOutputPort',true, ...
                'TrainingInputPort',false);
    %     end
    disp(estimated_angle)
        [bfs,w_est_ang] = beamformer(rawData_no_noise); 
        w_correction = ones(4,1);
        for i = 2 : 4
            if sum(real(rawData_no_noise(:,1)*w_est_ang(1)').*real(rawData_no_noise(:,i)*w_est_ang(i)'))< 0
                w_correction(i) = -1;
            end       
        end
    %     w_correction
        w_est_ang = w_est_ang;% .* w_correction;
        rawData_doc_MVDR(:,1) = ifft(fft(rawData(:,1))*w_est_ang(1));
        rawData_doc_MVDR(:,2) = ifft(fft(rawData(:,2))*w_est_ang(2));
        rawData_doc_MVDR(:,3) = ifft(fft(rawData(:,3))*w_est_ang(3));
        rawData_doc_MVDR(:,4) = ifft(fft(rawData(:,4))*w_est_ang(4));
        WBF_doc_MVDR = (conj(rawData_doc_MVDR*[1,1,1,1]'));
        dataCut = sum(rawData_no_noise.*w_est_ang',2);
        steering = rawSum;
    %% Save and Play
        angl = splt(estimated_angle);
        name = ['Angle_' num2str(angl) '_Power_' num2str(fix(powCalc(dataCut)))];
    %     input('Next measurments')   
        % disp(name)
    %% VSA
        if (vsa)
            zer = zeros(1,10000);
            if (Raw_sum_flag)
                dataVsa = (sum(rawData(cutInds,:), 2));
                VSA_load_m([dataVsa' zer]' , fsRfsoc,pcvsa, ['Raw_Sum_' name], bw)
            elseif (steering_flag)
                dataVsa = steering;
                VSA_load_m([dataVsa' zer]', fsRfsoc,pcvsa, ['Steering_' name], bw)
            else
%                 dataVsa = (rawData(cutInds,4));
                dataVsa = (rawData(:,4));
%                 VSA_load_m([dataVsa' zer]', fsRfsoc,pcvsa, ['Raw_4ch_' name], bw)
                VSA_load_m(dataVsa, fsRfsoc,pcvsa, ['Raw_4ch_' name], bw)
            end
            dataVsaF = filtfilt(Hd.Numerator,1,dataVsa);
           plot(real(rawData(:,4)))
            input('Next measurments')  
%             pause(2)
        end
    
        if (debug)
            toc
        end
        
    end
end
