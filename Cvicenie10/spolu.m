x = [0.3 0.8 0.9];
w = [0.5 0.7 0.3];

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
ory = medzivysledok(1);
if [typ == 0]
    % max(x, y)
    for i=2:length(medzivysledok)
      ory = max(ory, medzivysledok(i));
    endfor;
elseif [typ == 1]
    % x + y
    for i=2:length(medzivysledok)
      ory = ory + medzivysledok(i);
      if [ory >= 1]
        ory = 1;
      endif;
    endfor;
elseif [typ == 2]
    % x*y
    for i=2:length(medzivysledok)
      ory = ory + medzivysledok(i) - ory*medzivysledok(i);
    endfor;
endif;
ory

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
andy = medzivysledok(1);
if [typ == 0]
    % min(x + y)
    for i=2:length(medzivysledok)
      andy = min(andy, medzivysledok(i));
    endfor;
elseif [typ == 1]
    % x + y -1
    for i=2:length(medzivysledok)
      andy = andy + medzivysledok(i) - 1;
      if [andy <=0]
        andy = 0;
      endif;
    endfor;
elseif [typ == 2]
    % x*y
    for i=2:length(medzivysledok)
      andy = andy*medzivysledok(i);
    endfor;
endif;
andy

x = [ory, andy];
c = [0.33 0.83];
%c = [rand rand]

for i=1:length(c)
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
ory = medzivysledok(1);
if [typ == 0]
    % max(x, y)
    for i=2:length(medzivysledok)
      ory = max(ory, medzivysledok(i));
    endfor;
elseif [typ == 1]
    % x + y
    for i=2:length(medzivysledok)
      ory = ory + medzivysledok(i);
      if [ory >= 1]
        ory = 1;
      endif;
    endfor;
elseif [typ == 2]
    % x*y
    for i=2:length(medzivysledok)
      ory = ory + medzivysledok(i) - ory*medzivysledok(i);
    endfor;
endif;
ory
