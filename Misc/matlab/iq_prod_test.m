clear
close all
clc

%% iqprod
load('Z:\jupyter_notebooks\DOA\iq_prod\raw_data.mat')
channels = 16;    
len = round(length(data)/channels);
raw = zeros(channels, len);
% data_ = data(1:len*channels);
for i=1:channels
        raw(i, :) = data(i:channels:end);
    end
    raw_s = raw;
    rawc = double(raw);
    idd = 1;
    zer = zeros(1, length(rawc));
    rawc = [rawc(1, :); zer; rawc(2:8,:); zer; rawc(9:13,:); zer; rawc(14:16,:); zer;];
    for n=1:2:(channels+4)
        rawData_prod(:, idd) = rawc(n,:) - 1i*rawc(n+1,:);
        idd = idd + 1;
    end
%% raw
load('Z:\jupyter_notebooks\DOA\iq_prod\raw_data2.mat')
channels = 8;    
len = round(length(data2)/channels);
raw = zeros(channels, len);
% data_ = data2(1:len*channels);
for i=1:channels
        raw(i, :) = data2(i:channels:end);
    end

    rawc = double(raw);
    idd = 1;
    for n=1:2:channels
        rawData(:, idd) = rawc(n,:) - 1i*rawc(n+1,:);
        idd = idd + 1;
    end
%% comp
delay = 8;

cnt = 1;
for i=1:channels/2
    for j=i:channels/2
        prod(:, cnt) = rawData(:,i).*conj(rawData(:,j));
        cnt = cnt + 1;
    end
end
prod_c = prod(1:(length(rawData_prod)-delay+1),:)/2;
rawData_prod_d = rawData_prod(delay:end,:);
plot(abs(prod_c - rawData_prod_d));
legend
ylabel('Diff between raw and iq_prod')
xlabel('Samples')
%%
return
R(1,1) = mean(double(out.yout{1}.Values.Data(s:e)) + 1j*double(out.yout{2}.Values.Data(s:e)));
R(1,2) = mean(double(out.yout{3}.Values.Data(s:e)) + 1j*double(out.yout{4}.Values.Data(s:e)));
R(1,3) = mean(double(out.yout{5}.Values.Data(s:e)) + 1j*double(out.yout{6}.Values.Data(s:e)));
R(1,4) = mean(double(out.yout{7}.Values.Data(s:e)) + 1j*double(out.yout{8}.Values.Data(s:e)));
R(2,1) = R(1,2)';
R(2,2) = mean(double(out.yout{9}.Values.Data(s:e)) + 1j*double(out.yout{10}.Values.Data(s:e)));
R(2,3) = mean(double(out.yout{11}.Values.Data(s:e)) + 1j*double(out.yout{12}.Values.Data(s:e)));
R(2,4) = mean(double(out.yout{13}.Values.Data(s:e)) + 1j*double(out.yout{14}.Values.Data(s:e)));
R(3,1) = R(1,3)';
R(3,2) = R(2,3)';
R(3,3) = mean(double(out.yout{15}.Values.Data(s:e)) + 1j*double(out.yout{16}.Values.Data(s:e)));
R(3,4) = mean(double(out.yout{17}.Values.Data(s:e)) + 1j*double(out.yout{18}.Values.Data(s:e)));
R(4,1) = R(1,4)';
R(4,2) = R(2,4)';
R(4,3) = R(3,4)';
R(4,4) = mean(double(out.yout{19}.Values.Data(s:e)) + 1j*double(out.yout{20}.Values.Data(s:e)));

rx = double(v'*v);