function [ tout, yout ] = euler( F,tspan,y0,h )
F=inline(F,'t','y')
t0=tspan(1);
tfinal=tspan(2);
t=t0;
y=y0;
tout=t;
yout=y';
while t<tfinal
    y=y+h*feval(F,t,y);
    t=t+h;
    tout(end+1,1)=t;
    yout(end+1,:)=y';
end


end

