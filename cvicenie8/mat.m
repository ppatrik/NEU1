epsilon = 1;
sigma = 1;
etta = 0.1;
% X1 X2 T
x = [
  0.5 0.7 -1;
  0.4 0.5 -1;
  0.6 0.6 -1;
  0.6 0.4 -1;
  0.8 0.6 -1;
  0.2 0.8 1;
  0.1 0.7 1;
  0.9 0.3 1;
  0.8 0.1 1;
  0.3 0.1 1
];
% centrá 
c = [
 0.149 0.749;
 0.851 0.4471;
 0.5615 0.195;
 0.5018 0.5984
];
w = [
 0.5 0.5 0.5 0.5
];
f1=figure;
figure(f1);
hold on;
plot(x(:,1), x(:,2), 'o');
plot(c(:,1), c(:,2), 'x', 'color', 'red');

r = 0:0.1:1;
fx = exp(-power(epsilon*r, 2));
plot(r, fx, '--', 'color', 'green');

for i=1:size(x)
  %x(i,1:2)
  for ii=1:size(c)
    ro(ii) = exp(-power(Vzdialenost(x(i,1:2), c(ii,1:2)) / sigma, 2));
  end;  
  
  d = 0;
  for ii=1:size(c)
    d += w(ii)*ro(ii);
  end;
  d = sqrt(d)
  o = x(i,3);
  deltawi = etta * (d - o) * roi
end;
