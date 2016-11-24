s2 = [1 1;1 -1];
s4 = [s2 s2; s2 -s2];
s8 = [s4 s4; s4 -s4];
s16 = [s8 s8; s8 -s8];

f1 = figure;
figure(f1);

img = s16;
for i=1:16
  for ii=1:16
    if img(i,ii) == 1
      img(i,ii) = 255;
    else
      img(i,ii) = 0;
    endif;
  endfor;
endfor;

image(img), axis square

colormap(gray(256))
