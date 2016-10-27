s1 = 1;
s2 = 2;

x = -10:0.2:10;
g1 = exp( - power( x / s1, 2 ) );
g2 = exp( - power( x / s2, 2 ) );



alfa = 0.5;
h = g1 - g2;
Mh = g1 + alfa * h;


f1 = figure;
figure(f1);
hold on;
plot(x, g1, '-b');
plot(x, g2, '-r');
plot(x, Mh, '-m');
  
mestaX = [10 80 130 140 50];
mestaY = [80 160 120 30 20];
f2 = figure;
figure(f2);
hold on;
plot(mestaX, mestaY, 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'red')

pociatocneVahyX = [60 80 100 100 80 60]
pociatocneVahyY = [70 60 70 100 110 100]
plot(pociatocneVahyX, pociatocneVahyY, '-o', 'MarkerSize', 8, 'MarkerFaceColor', 'blue')
line([pociatocneVahyX[1] pociatocneVahyX[6]], [pociatocneVahyY[1], pociatocneVahyY[6]])
  
