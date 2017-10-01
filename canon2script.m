% canon2script.m
% plots the step response of a canonical second order system with  
% natural frequency: omega
% damping ratio: zeta
% steady state gain: A
 
% set the parameters 
omega=10;zeta=0.1;A=1;
 
% run the simulation
tstop=5;
[t,x,y]=sim('canon2',tstop);
 
% plot
plot(t,y)
str=sprintf('2nd Order System A = %g zeta = %g omega = %g rad/s', ...
    A,zeta,omega);
title(str)
ylabel ('Step response y(t) ')
xlabel ('time t (s)')
line([0 tstop],[1 1])
