clc
clear

%{
EW & NS component plotting

ew_d = East-West component at depth d
ns_d = North-South component at depth d
%}

ds = 'data_ew_ns';

ew_15 = xlsread(ds, 'K2:K50');  %EW component 
ns_15 = xlsread(ds, 'J2:J50');  %NS component 

ens = xlsread('track1', 'A2:A50'); % Ensamble

figure()
subplot(211)
plot(ens, ew_15)
set(gca, 'XAxisLocation', 'bottom', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Ensamble', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('EW Comp. (mm/s)', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('D 15', 'location', 'northwest')

subplot(212)
plot(ens, ns_15)
set(gca, 'XAxisLocation', 'bottom', 'FontSize', 12, 'FontWeight', 'Bold')
set(gca, 'YAxisLocation', 'left', 'FontSize', 12, 'FontWeight', 'Bold')
xlabel('Ensamble', 'FontSize', 12, 'FontWeight', 'Bold')
ylabel('NS Comp. (mm/s)', 'FontSize', 12, 'FontWeight', 'Bold')
grid on
legend('D 15', 'location', 'northwest')
