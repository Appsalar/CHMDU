F = 't + 2 * y';
tspan = [0 1];
y0 = 0.25;
%h = [1/5 1/10 1/100];
h = [0.001 0.0005];

x = [0:0.0005:1];
y = 1/2 * (exp(2 .* x) .- x .- 1/2);

for i = h
  [tout , yout] = euler(F, tspan, y0, i);
  plot(tout, yout, x, y);
  norm(y - yout, Inf)
  pause;
end