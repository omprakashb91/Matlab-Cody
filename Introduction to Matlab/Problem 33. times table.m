% Problem 33
% Create times-tables

function m = timestables(n)
for x=1:n
    for y=1:n
    m(x,y) = x*y;
    end
end

end
