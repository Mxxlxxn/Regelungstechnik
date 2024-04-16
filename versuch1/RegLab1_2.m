clear;
R = 1000; %Ohm
C = 1.59e-9; %Farad

hp = tf([R*C,0],[R*C,1]); %Übertragungsfunktion

hp_b = bodeplot(hp);
setoptions(hp_b, 'FreqUnits', 'Hz', 'XLim', {[100, 10e6]}, 'PhaseVisible', 'off');

hp_n = nyquistplot (hp);
setoptions(hp_n, 'ShowFullContour', 'off');
axis equal