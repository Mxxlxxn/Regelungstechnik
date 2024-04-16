clear;
close;

param_K1 = 10/400; %V pro Grad
param_K2 = 400/230; %Grad pro V
param_tau = 900; %s 15 min
u_ein = 0.02; %V
u_aus = -0.02; %V

sim('RegLab1_3mod.slx', [0 4200]);
