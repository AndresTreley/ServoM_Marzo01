function ej01Marzo1(t,v)

t=0:0.01:50;
v0=[100;8];

[t,v]=ode45(@ej11,t,v0);
subplot(2,1,1);
plot(t,v(:,1));
subplot(2,1,2);
plot(t,v(:,2));
xlabel('Tiempo');ylabel('Poblacion');

end

function Dv=ej11(t,v)
a=0.4; b=0.4;c=2; d=0.09;

Dv=[a*v(1)-b*v(1)*v(2);
    c*v(1)*v(2)-d*v(2)];
end