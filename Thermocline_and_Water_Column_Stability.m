clc
clear

d1 = 'data_T-S' ; % data sample

t = xlsread(d1, 'B2:B41');  % temperature (ITS-90, deg C)
d = xlsread(d1, 'L2:L41');  % depth (m)

s = xlsread(d1, 'J2:J41');  % buoyancy frequency (N^2, rad^2/s^2)
p = xlsread(d1, 'A2:A41');  % Pressure (Digiquartz, db)

figure()
subplot(1,2,1)
plot(t, d)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Thermoclin Profile', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('Depth (m)', 'FontSize', 12, 'FontWeight', 'Bold')
grid on

subplot(1,2,2)
plot(s, p)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Water Column Stability', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('Pressure (db)', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
