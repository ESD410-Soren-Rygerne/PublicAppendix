test = readtable("jcope_8.csv");

% test = renamevars(test, "x_Freq_", "Frequency");

test2 = readtable("jcope_9.csv");
% test2 = renamevars(test2, "x_Freq_", "Frequency");

width  = 1200; % Width of figure
height = 400; % Height of figure

figure('Position', [0 0 width height]);

yvar = "THD";
max(test.Var3(2:end,:))
max(test2.Var3(2:end,:))

hold on;
plot(test, "Var1", "Var3", LineWidth=2,DisplayName="Rev1")
plot(test2,"Var1", "Var3", LineWidth=2,DisplayName="Rev2")
% 
% plot(test,"Frequency", "HD2")
% plot(test,"Frequency", "HD3")
% plot(test,"Frequency", "HD4")
% plot(test,"Frequency", "HD5")

grid on
axis([-0.001 0.001 -1 1])
xlabel("Frequency [Hz]", "FontSize", 16);
ylabel("THD [dB]", "FontSize", 16);
legend;


