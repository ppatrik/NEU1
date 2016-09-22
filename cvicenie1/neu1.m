% prvy program
%xx=[3 4; 3 7; 8 7; 5 9; -1 -1; -2 5; -3 3; 2 5; 5 2; 4 2];
xx=[
    3 4 -1; 
    3 7 -1; 
    8 7 -1; 
    5 9 -1; 
    -1 -1 -1; 
    -2 5 -1; 
    -3 3 -1; 
    2 5 -1; 
    5 2 -1; 
    4 2 -1];
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
w0=[1 2 3];
x1=-4:1:10;
x2=(w0(3)-w0(1)*x1)/w0(2);
plot(x1, x2, '-m', 'LineWidth', 2) % vykreslenie ciary

for i=1:5000
    
    for ii=1:size(xx, 1)
        z=Neuron(w0, xx(1, :));
        if z~=d(ii)
            w0=w0+0.5*(d(ii)-z)*xx(ii,:);
        end;
    end;

    x1=-4:1:10; % od -4 krok 1 do 10
    x2=(w0(3)-w0(1)*x1)/w0(2);
    plot(x1, x2, '-y', 'LineWidth', 1) % vykreslenie ciary
end
