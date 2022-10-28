% Problem 568
% Number of 1s in a binary string

function y = one(x)
y=0;
for a=1:1:length(x)
      if x(a)=='1'
          y=y+1
      end
end
