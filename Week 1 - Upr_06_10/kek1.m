F = '-10 * y';
tspan = [0 1];
y0 = 1;
h = 1/4;

[tout , yout] = euler(F, tspan, y0, h);

h = 1/100;
[tout1 , yout1] = euler(F, tspan, y0, h);
plot(tout, yout, tout1, yout1)