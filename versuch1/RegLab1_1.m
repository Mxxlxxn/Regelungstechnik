clear;

x10 = 2; 
x20 = 4;
f1 = 2; %kHz
f2 = 6; %kHz
fs = 1000/(3e-3); %Abtastfrequenz in Hz

t = linspace(0,3,1000); %Abtastpunkte
x1 = x10 * sin(2*pi*f1*t);
x2 = x20 * sin(2*pi*f2*t-(pi/4));
x3 = x1 .* x1; %elementweise verknüpfen

x1_f = fft(x1); %Fouriertransformation
x1_f = fftshift(x1_f); %Frequenz 0 in Mitte schieben
x1_f = abs(x1_f); %Absolutwert, da sonst komplex
x3_f = fft(x3);
x3_f = fftshift(x3_f);
x3_f = abs(x3_f);
f = linspace (-fs/2, fs/2, 1000); %Frequenzen auf x-Achse bis Nyquistfrequenz (FFT geht bis da hin und hat genauso viele Abtastpunkte wie ursprüngliches Signal)

subplot(4,1,1); 
hold on
xlabel('t in ms')
ylabel('x(t)')
grid on
plot(t, [x1;x2;x3])
legend('x1(t)', 'x2(t)', 'x3(t)')
hold off

subplot(4,1,2);
hold on 
axis([-10000 10000 0 2010]) 
xlabel('Frequenzen')
ylabel('Amplitude')
grid on
plot(f, [x1_f; x3_f])
legend('x1(t)', 'x3(t)')
hold off

subplot (4, 1, 3);
hold on
xlabel('x1')
ylabel('x2')
title('Lissajous Figur')
plot(x1, x2)
axis equal;
hold off

subplot (4,1,4);
t = linspace(0,3,1001);
x1 = x10 * sin(2*pi*f1*1e3*t);
x2 = x20 * sin(2*pi*f2*1e3*t-(pi/4));
hold on
xlabel('x1')
ylabel('x2')
title('falsche Lissajous Figur')
plot(x1, x2)
hold off