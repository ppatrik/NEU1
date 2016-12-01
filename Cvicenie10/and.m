x = [0.3 0.8 0.9];
w = [0.5 0.7 0.3];

%x = [0.7 0.5];
%w = [0.33 0.83];

typ = 0; % godelova
%typ = 1; % lukasieviczova
%typ = 2; % produktova

for i=1:length(x)
  % or
  if [typ == 0]
    % max(x, y)
    medzivysledok(i) = max(x(i), w(i));
  elseif [typ == 1]
    % x + y
    medzivysledok(i) = x(i) + w(i);
    if [medzivysledok(i) >= 1]
      medzivysledok(i) = 1;
    endif;
  elseif [typ == 2]
    % x + y - x*y
    medzivysledok(i) = x(i) + w(i) - x(i)*w(i);
  endif;
endfor;

% and
y = medzivysledok(1);
if [typ == 0]
    % min(x + y)
    for i=2:length(medzivysledok)
      y = min(y, medzivysledok(i));
    endfor;
elseif [typ == 1]
    % x + y -1
    for i=2:length(medzivysledok)
      y = y + medzivysledok(i) - 1;
      if [y <=0]
        y = 0;
      endif;
    endfor;
elseif [typ == 2]
    % x*y
    for i=2:length(medzivysledok)
      y = y*medzivysledok(i);
    endfor;
endif;
y
