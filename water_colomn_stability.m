clc
clear 

%{
water colomn stability

s_m = buoyancy frequency (N^2, rad^2/s^2) at point m
p_m = Pressure (Digiquartz, db) at point m
%}

% Transect 1

d1 = 'pengolahan 1'

s_11 = xlsread(d1, 'J2:J4046');
p_11 = xlsread(d1, 'A2:A4046');
s_10 = xlsread(d1, 'J4047:J7780');
p_10 = xlsread(d1, 'A4047:A7780');
s_09 = xlsread(d1, 'J7781:J11412');
p_09 = xlsread(d1, 'A7781:A11412');

%Transect 2

d2 = 'pengolahan 2'

s_12 = xlsread(d2, 'J2:J7987');
p_12 = xlsread(d2, 'A2:A7987');
s_13 = xlsread(d2, 'J7988:J4242');
p_13 = xlsread(d2, 'A7988:A4242');
s_14 = xlsread(d2, 'J4243:J11224');
p_14 = xlsread(d2, 'A4243:A11224');

%Transect 3

d3 = 'pengolahan 3'

s_15 = xlsread(d3, 'J2:J2317');
p_15 = xlsread(d3, 'A2:A2317');
s_16 = xlsread(d3, 'J2318:J6187');
p_16 = xlsread(d3, 'A2318:A6187');


figure()
subplot(1,3,1)
plot(s_11, p_11, s_10, p_10, s_09, p_09)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('stability', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('pressure', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD11', 'CTD10', 'CTD09', 'location', 'southeast')

subplot(1,3,2)
plot(s_12, p_12, s_13, p_13, s_14, p_14)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('stability', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('pressure', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD12', 'CTD13', 'CTD14', 'location', 'southeast')

subplot(1,3,3)
plot(s_15, p_15, s_16, p_16)
set(gca, 'XAxisLocation', 'top', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('stability', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('pressure', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('CTD15', 'CTD16', 'location', 'southeast')
