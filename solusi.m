%Solution to problem 9.32
t = 0:0.1:40;clc;
%Underdamped System
K = 0.1;
w = sqrt(K);
z = 0.5/w;
fac = w*sqrt(1-z^2)*t + atan(sqrt(1-z^2)/z);
y1 = 1 - 1/sqrt(1-z^2).*exp(-z*w*t).*sin(fac);
figure(1);clf;
plot(t,y1,'-')
%ylim([0 1.5])
xlabel('Time (s)')
ylabel('Response')
%title('Underdamped K = 0.1')
hold on
%Critically Damped System
K = 0.25;
w = sqrt(K);
z = 0.5/w
tau = 1/w
y2 = 1 - exp(-t/tau) - t.*exp(-t/tau);
plot(t,y2,'-.')
%Over Damped System
K = 2.50000;
w = sqrt(K);
z = 0.5/w;
t1 = 1 / (z*w - w*sqrt(z^2-1));
t2 = 1 / (z*w + w*sqrt(z^2-1));
k1 = 0.5 * (1 + z/sqrt(z^2+1));
k2 = 0.5 * (1 - z/sqrt(z^2+1));
y3 = 1 - k1*exp(-t/t1) - k2*exp(-t/t2);
plot(t,y3,'--')
hold off
legend ('K = 0.1' , 'K = 0.25' , 'K = 2.5')
