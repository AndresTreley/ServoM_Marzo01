function ej02Marzo1(t,x)

t=0:0.01:50;
x0=[0; 0; 0; 0;];

[t,x]=ode45(@ej21,t,x0);

subplot(4,1,1);
plot(t,x(:,1));


subplot(4,1,2);
plot(t,x(:,2));

subplot(4,1,3);
plot(t,x(:,3));

subplot(4,1,4);
plot(t,x(:,4));

end

function Dx=ej21(t,x)

M=10;m=5;l=10;J=1; g=9.8; u=1;
Dx=[x(3);
    x(4);
    ((m*l*cos(x(2))*m*g*l*sin(x(2))/(J*m*l*l-m*l*cos(x(2))))-m*l*sin(x(2))*x(4)+u)/(M+m);
    m*g*l*sin(x(2))/(J*m*l*l-m*g*l*sin(x(2)))];

end