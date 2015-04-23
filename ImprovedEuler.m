% Improved-Euler method
% a,b is the range for independent variable t.
% u0 is the initial value for u(0)=u0
% h is the length of iterative step length
% f(t,u) is the right side of fundamental form ODE: du/dt=f(t,u)
% the output is discrete points of t,u

function [t,u]=ImprovedEuler(a,b,u0,h)
t=a:h:b;
u(1)=u0;
for (n=1:1:length(t)-1)
Pu(n+1)=u(n)+h.*f(t(n),u(n));
u(n+1)=u(n)+h./2*( f(t(n),u(n))+ f(t(n+1),Pu(n+1)) );
end
