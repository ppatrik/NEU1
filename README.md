# NEU1

## Syntax

**Vektor**
```matlab
a=[1 2 3]
```

**Matica**
```matlab
aa=[1 2 3; 4 5 6; 6 7 8]
```

**Transponovanie**
```matlab
a'
aa'
```

**Plocha pre kreslenie**
```matlab
f1=figure; % vytvorenie plochy pre vykreslovanie
figure(f1); % nastavenie plochy do ktorej budu nasledovne kody vykreslova
% vykreslujeme do f1
```

**Graf**
```matlab
% Bodkovy ('o') graf matice xx 
plot(xx(:,1), xx(:, 2), 'o', 'MarkerSize', 8, 'MarkerFaceColor', 'red')
% nastavenie súradníc
axis([-4 10 -3 10])
```

## NNet rozšírenie pre octave

Stiahneme balíček [tu](nnet-0.1.13.tar.gz) a inštalácia príkazom v octave
```
pkg install nnet-0.1.13.tar.gz
```
Zdroj rozšírenia: http://octave.sourceforge.net/nnet/index.html
