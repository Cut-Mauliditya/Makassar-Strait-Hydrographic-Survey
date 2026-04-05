clc
clear

%{
Thermoclyn plotting

t_m = Temperature (ITS-90, deg C) at point m
d_m = depth (m) at point m
%}

% Transect 1

d1 = 'pengolahan_01'

t_11 = xlsread(d1, 'B2:B2005');
d_11 = xlsread(d1, 'J2:J2005');
t_10 = xlsread(d1, 'B2004:B3852');
d_10 = xlsread(d1, 'J2004:J3852');
t_09 = xlsread(d1, 'B3852:B5651');
d_09 = xlsread(d1, 'J3852:J5651');

% Transect 2

d2 = 'pengolahan_02'

t_12 = xlsread(d2, 'B2:B2099');
d_12 = xlsread(d2, 'J2:J2099');
t_13 = xlsread(d2, 'B2010:B3954');
d_13 = xlsread(d2, 'J2010:J3954');
t_14 = xlsread(d2, 'B3955:B5558');
d_14 = xlsread(d2, 'J3955:J5558');

% Transect 3

d3 = 'pengolahan_03'

t_15 = xlsread(d3, 'B2:B1917');
d_15 = xlsread(d3, 'J2:J1917');
t_16 = xlsread(d3, 'B1918:B3067');
d_16 = xlsread(d3, 'J1918:J3067');

figure()
subplot(1,3,1)
plot(t_11, d_11, t_10, d_10, t_09, d_09)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Temperature', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('Depth', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD11', 'CTD10', 'CTD09', 'location', 'southeast')

subplot(1,3,2)
plot(t_12, d_12, t_13, d_13, t_14, d_14)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Temperature', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('Depth', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD12', 'CTD13', 'CTD14', 'location', 'southeast')

subplot(1,3,3)
plot(t_15, d_15, t_16, d_16)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Temperature', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('Depth', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD15', 'CTD16', 'location', 'southeast')
