clear

FREQUENCY = 10^5;
RESISTOR = 1560;
CAPACITOR = 10^-9;
denominator = [RESISTOR*CAPACITOR*2*pi, 1];
system = tf(1, denominator);

plot = bodeplot(system);
setoptions(plot,'FreqUnits','Hz','PhaseVisible','off', 'xlim', {[10^2, 10^7]});
