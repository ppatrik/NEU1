x = [0.3 0.8 0.9];
w = [0.5 0.7 0.3];

x = [0.5 0.7];
w = [0.33 0.83];

typ = 0; % godelova
%typ = 1; % lukasieviczova
%typ = 2; % produktova

for i=1:length(x)
  % and
  if [typ == 0]
    % min(x + y)
    medzivysledok(i) = min(x(i), w(i));
  elseif [typ == 1]
    % x + y - 1
    medzivysledok(i) = x(i) + w(i) - 1;
    if [medzivysledok(i) <= 0]
      medzivysledok(i) = 0;
    endif;
  elseif [typ == 2]
    % x*y
    medzivysledok(i) = x(i)*w(i);
  endif;
endfor;

% or
y = medzivysledok(1);
if [typ == 0]
    % max(x, y)
    for i=2:length(medzivysledok)
      y = max(y, medzivysledok(i));
    endfor;
elseif [typ == 1]
    % x + y
    for i=2:length(medzivysledok)
      y = y + medzivysledok(i);
      if [y >= 1]
        y = 1;
      endif;
    endfor;
elseif [typ == 2]
    % x*y
    for i=2:length(medzivysledok)
      y = y + medzivysledok(i) - y*medzivysledok(i);
    endfor;
endif;
y
