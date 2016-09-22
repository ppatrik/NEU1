% prvy program
xx=[3 4; 3 7; 8 7; 5 9; -1 -1; -2 5; -3 3; 2 5; 5 2; 4 2];
d=[-1; 1; 1; 1; -1; -1; -1; -1; 1; -1];

f1=figure; % figure ak idem vykreslovať
figure(f1); % ak idem uz vykreslovat fo f1

% priklad 1: vykreslenie vsetkych bodov
%plot(xx(:,1), xx(:, 2), 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'red')
%axis([-4 10 -3 10]) % nastavenie súradníc

% priklad 2: vykreslenie grafu (cervena pre kladne a cierna pre zaporne body)
for i=1:size(xx, 1)
    if d(i) > 0
        plot(xx(i,1), xx(i, 2), 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'red')
    else 
        plot(xx(i,1), xx(i, 2), 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'black')
    end;
    hold on;
end;
axis([-4 10 -3 10]) % nastavenie súradníc

% priklad 3: hladanie priamky pre demonstraciu uciaceho pravidla
x1=-4:1:10;
x2=(3-x1)/2;
plot(x1, x2, '-m', 'LineWidth', 2) % vykreslenie ciary

w0=[1 2 3];
