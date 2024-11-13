% Optimization Example

r = 0.5:0.1:10; 			%radius
V = 330;				    %volume

A = 2*pi*r.^2 + 2*V./r;		%surface area
  
[opt_A,i] = min(A);         %find optimal r

opt_h = V/(pi*r(i)^2);

display(['The optimal radius is: ',num2str(r(i)),'cm',', the optimal height is: ',num2str(opt_h),'cm']);

figure('Name','Optimization Example');
plot(r,A);
title('Surface area vs. radius')
hold on
plot(r(i),A(i),'r*')
legend('A(r)','value of r that minimizes A')
xlabel('r in cm')
ylabel('A(r) in cm^2')
grid on
hold off
