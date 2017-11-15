F = '9.8 - 2 * y';
tspan = [0 5];
v0 = [0 3 4.9 6 10];
h = 0.1;

x = [0:h:5];
tmp = 0.5 * 9.8;

for i = v0
  disp(i);
  y = tmp .+ (i - tmp) .* exp(-2 .* x);
  [tout , yout] = euler(F, tspan, i, h);
  plot(tout, yout, x, y);
  %norm(y - yout, Inf)
  pause;
end