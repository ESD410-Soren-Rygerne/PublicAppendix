
size = 48;
length=7001;

tiledlayout(2,1);
nexttile;
for i=1:1:size

p1 = semilogx(test.Freq((1+length*(i-1)):(length*i)),test.dB((1+length*(i-1)):(length*i)))
hold on;
end
hold off;
grid on;
xlabel('Frequency [Hz]', 'FontSize', 12,Interpreter='latex');
ylabel('Ratio [dB]', 'FontSize', 12, Interpreter='latex');
title('Frequency response simuulation of equalizer with different potentiometer values for bass and treble', 'FontSize', 14,Interpreter='latex');

nexttile;
for i=1:1:size

p2 = semilogx(test.Freq((1+length*(i-1)):(length*i)),test.Phase((1+length*(i-1)):(length*i)))
hold on;
end
hold off;
grid on;
xlabel('Frequency [Hz]', 'FontSize', 12,Interpreter='latex');
ylabel('Phase [deg]', 'FontSize', 12, Interpreter='latex');

