clc
clear

%{
EW & NS component plotting

ew_d = East-West component at depth d
ns_d = North-South component at depth d
%}

ds = 'track1';

%EW component 

ew_15 = xlsread(ds, 'K2:K2161');
ew_119 = xlsread(ds, 'K28082:K30241');
ew_207 = xlsread(ds, 'K51842:K54001');

%NS component 

ns_15 = xlsread(ds, 'J2:J2161');
ns_119 = xlsread(ds, 'J28082:J30241');
ns_207 = xlsread(ds, 'J51842:J54001');

ens = xlsread('track1', 'A2:A2161'); % Ensamble

figure()
subplot(211)
plot(ens, ew_15)
hold on
plot(ens, ew_119)
plot(ens, ew_207)
set(gca, 'XAxisLocation', 'bottom', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Ensamble', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('EW Comp. (mm/s)', 'FontSize', 12, 'FontWeight', 'Bold')
xlim([12450 14700])
grid on
legend('D 15', 'D 119', 'D 207', 'location', 'northwest')

subplot(212)
plot(ens, ns_15)
hold on
plot(ens, ns_119)
plot(ens, ns_207)
set(gca, 'XAxisLocation', 'bottom', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Ensamble', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('NS Comp. (mm/s)', 'FontSize', 12, 'FontWeight', 'Bold')
xlim([12450 14700])
grid on
legend('D 15', 'D 119', 'D 207', 'location', 'northwest')
