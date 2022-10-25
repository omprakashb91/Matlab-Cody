% Problem 55250
% Find the minimum of the column-maximums of a matrix

function m = mimimax(A)
m = min(max(A,[],1))         % max value in each column
end
