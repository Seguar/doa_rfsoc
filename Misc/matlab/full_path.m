clear
clc
clf
addpath 'C:\Users\Sergei\Documents\HFIC\Packet-Creator-VHT'

%% Constants
fc = 5e9;
% fcPluto = 4.93e9;
fcPluto = 4.904e9; % For 5G SR

dataChan = 4096*8; % Samples per channel (buffer size)

c = physconst('LightSpeed'); % propagation velocity [m/s]
lambda = c / fc; % wavelength
d = lambda/2; % spacsing antenna elemnts
min_ang = -90; % min scanning angle
max_ang = 90; % max scanning angle
scan_res = 0.1; % scan resolution
scan_axis = min_ang:scan_res:max_ang; % angles axis
num_elements = 4;
wavelength = physconst('LightSpeed')/fc;
ula = phased.ULA('NumElements',num_elements,'ElementSpacing',d);
clCnt = 0;
dotsNum = 10;

debug = 1; % Show time

%% Pluto tx
[packet, fs_Signal]= Signal_Gen();
zeros_N =  2000; %10e4;     % Zeros between packets
sig_org = [packet(:,1)+1j*packet(:,2) ; zeros(1,zeros_N)'];
fs      = 60e6;    % Depand on bandwidth See User Manual
sig_org   = sig_org(1:floor(length(sig_org)/24)*24);
fs0 = fs_Signal;

sig_new    = sig_org/max(abs(sig_org));
sig_Pluto = resample(sig_org,fs,fs0);
%% CW
 sw = dsp.SineWave;
 sw.Amplitude = 1;
 sw.Frequency = 10e6;
 sw.ComplexOutput = true;
 sw.SampleRate = fs_Signal;
 sw.SamplesPerFrame = 50000;
 txWaveform = sw();  
%%
tx = sdrtx('Pluto');
tx.ShowAdvancedProperties = true;
tx.CenterFrequency = fcPluto;
tx.BasebandSampleRate = fs_Signal;
tx.Gain = 0;
transmitRepeat(tx,sig_new);
% transmitRepeat(tx,txWaveform);

%% Plot
set(0,'DefaultFigureWindowStyle','docked')
drawnow
hold on;
grid minor;
axis tight;
yspec = zeros(1, length(scan_axis));
txtPlt = text(0, 0, '', 'Color', 'blue', 'FontSize', 14);
plot_handle = plot(scan_axis, yspec);
ylim([0 100])
xlim([min_ang max_ang])

xlabel('\Theta^o');
ylabel('Power_{MVDR} [dB]');
disp('start')

data_size = dataChan * 8;
data_size_bytes = typecast(uint64(data_size), 'uint8');

while(true)
tic    
    %% TCP
    % Define the server IP and port (should match the server settings)
    server_ip = 'pynq'; % Use the appropriate IP address or hostname
    server_port = 4000; % Use the same port number used in the Python server
    
    tcp_client = tcpclient(server_ip, server_port);
    write(tcp_client, data_size_bytes);
    
    % Read the data from the server
    data_bytes = read(tcp_client, data_size * 2, 'int8'); %tcp can trnsmit only int8
    % Unpack the received binary data into Int16 array
    data = typecast(data_bytes, 'int16');

    %% Data convert
    channels = 8;
    dataLen = data_size/channels;
    raw = zeros(channels, dataLen);
    rawData = zeros(dataLen, channels/2);
    
    for i=1:channels
        raw(i, :) = data(i:channels:end);
    end
    rawc = double(raw);
    idd = 1;
    for n=1:2:channels
        rawData(:, idd) = rawc(n,:) + 1i*rawc(n+1,:);
        idd = idd + 1;
    end
    
    %% Data
    R = rawData'*rawData;
    %% MVDR
    Rx = R;    %Data covarivance matrix
    Rx_Inv = Rx^(-1);           %Inverse of covariance matrix
    A = zeros(num_elements,1);
    
    %% Plot data
    yspec = zeros(1, length(scan_axis));
    for t=1:length(scan_axis)
        A = exp(-1j*2*pi*d*(0:num_elements-1)'*sind(scan_axis(t))/lambda);
        B = A'*Rx_Inv*A;
        yspec(t) = 10*log10(abs(1/B));
    end
    [val, idx] = max(yspec);
    
    name = ['Estimated angle = ' num2str(scan_axis(idx)) char(176) newline 'Estimated power = ' num2str(val)];
    txt = [newline newline '\uparrow' newline num2str(scan_axis(idx)) char(176)];
    set(txtPlt, 'String', txt, 'Position', [scan_axis(idx), val]);
    title('Direction of arrival');
    set(plot_handle, 'YData', yspec);
    plot(scan_axis(idx), (val), '.', MarkerSize=30);
    set(gca, 'YScale', 'log')
    legend(name, 'Location', 'none', 'FontSize', 12)
    legend('boxoff')
    % Save only dotsNum amount of dots
    h = get(gca, 'Children');    
    if clCnt >= dotsNum
        delete(h(dotsNum+1))
    else 
        clCnt = clCnt +1;
    end

    if (debug)
        toc
    end
end