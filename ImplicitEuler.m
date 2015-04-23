function [t,u]=ImplicitEuler(a,b,u0,h)
t=a:h:b;
u(1)=u0;
for (n=1:1:length(t)-1)
    u(n+1)=u(n)-1;
    temp=u(n);
    while(abs(temp-u(n+1)>0.001))
    u(n+1)=temp
    temp=u(n)+.*f(t(n+1),u(n+1))
    end
end