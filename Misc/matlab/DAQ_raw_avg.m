%% RAW
load('Z:\jupyter_notebooks\DOA\iq_prod\fifo_ram_mat\raw.mat')
channels = 8;    
len = round(length(raw_d)/channels);
raw = zeros(channels, len);
% data_ = data2(1:len*channels);
for i=1:channels
    raw(i, :) = raw_d(i:channels:end);
end

rawc = double(raw);
idd = 1;

for n=1:2:channels
    rawData(:, idd) = rawc(n,:) - 1i*rawc(n+1,:);
    idd = idd + 1;
end
%% AVG
load('Z:\jupyter_notebooks\DOA\iq_prod\fifo_ram_mat\avg.mat')
