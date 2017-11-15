tspan = [0, 50];
h = 0.001;
y0 = [1; -2];

F = '[y(2);2*y(2)-2*y(1)-3*(y(2)^3)]';

[tout, yout] = rk21(F, tspan, y0, h);
plot(tout, yout)
pause;
plot(yout(:, 1), yout(:, 2))
[tout1, yout1] = rk21(F, tspan, y0, h / 2);

[tout2, yout2] = rk21(F, tspan, y0, h / 4);

%a(k)  = log((yout(k , 1) - yout))