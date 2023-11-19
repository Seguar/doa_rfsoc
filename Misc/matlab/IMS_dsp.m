clear
clc
clf

%% 
%%
fcPluto = 5.7e9; 
fsRfsoc = 125e6;
c = physconst('LightSpeed');
lambda = fcPluto / 5.7e9; % wavelength
min_ang = -90; % min scanning angle
max_ang = 90; % max scanning angle
scan_res = 0.1; % scan resolution
d = lambda/2;
scan_axis = min_ang:scan_res:max_ang; % angles axis
num_elements = 4;
ula = phased.ULA('NumElements',num_elements,'ElementSpacing',d);


%% Different number of samples
iter = 100;
ang_vec_raw = zeros(iter,1);
ang_vec_avg = zeros(iter,1);
for j=1:iter
    load('Z:\jupyter_notebooks\DOA\iq_prod\fifo_ram_mat\raw.mat')
    load('Z:\jupyter_notebooks\DOA\iq_prod\fifo_ram_mat\avg.mat')

    R_avg = avg;
    rawData = raw_d;
    R_raw = rawData'*rawData;
    R_avg_inv = R_avg^(-1);  
    R_raw_inv = R_raw^(-1);           
    A = zeros(num_elements,1);
    yspec_avg = zeros(1, length(scan_axis));
    yspec_raw = zeros(1, length(scan_axis));
    for t=1:length(scan_axis)
        A = exp(-1j*2*pi*d*(0:num_elements-1)'*sind(scan_axis(t))/lambda);
        B_avg = A'*R_avg_inv*A;
        B_raw = A'*R_raw_inv*A;
        yspec_avg(t) = 10*log10(abs(1/B_avg));
        yspec_raw(t) = 10*log10(abs(1/B_raw));
    end
    [max_avg, idx_avg] = max(yspec_avg);
    [max_raw, idx_raw] = max(yspec_raw);
    ang_vec_raw(j) = yspec_raw(idx_raw);
    ang_vec_avg(j) = yspec_avg(idx_avg);
end
ang_avg = scan_axis(idx_avg);
ang_raw = scan_axis(idx_raw);

ang_raw_mean = mean(ang_raw);
ang_raw_var= var(ang_raw);
ang_avg_mean = mean(ang_avg);
ang_avg_var= var(ang_avg);

hold on;
power_gap = max(yspec_avg) - max(yspec_raw);
plot(scan_axis, yspec_avg - power_gap, LineWidth=1.5,LineStyle="-.");
plot(scan_axis, yspec_raw, LineWidth=1.5,LineStyle="--");
xlabel("\Theta^\circ");
ylabel("Power");
legend('Avareged Data', 'Raw Data');
grid on;





