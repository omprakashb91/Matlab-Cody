% Problem 2064
% Generate this matrix

function y = mystery_matrix(n)
d=-(2*n+1);
for a=1:1:(n*2+1)
    e=d+1;
    for b=1:1:(n*2+1)
     y(a,b)= e;
     e=e+1;
    end
    d=d+1;
end

end
