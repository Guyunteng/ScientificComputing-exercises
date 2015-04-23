function [t,u]=Euler(a,b,u0,h)
t=a:h:b;
u(1)=u0;
for (n=1:1:length(t)-1)
u(n+1)=u(n)+h*(f(t(n),u(n)));
end