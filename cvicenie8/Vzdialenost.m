function [retval] = Vzdialenost (input1, input2)
  sum = 0;
  for i=1:size(input1)
    sum = sum + power(input1(i) - input2(i), 2);
  end;
  retval = sqrt(sum)
endfunction
