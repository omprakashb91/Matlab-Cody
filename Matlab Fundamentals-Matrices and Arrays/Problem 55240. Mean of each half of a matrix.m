% Problem 55240
% Calculate the mean of each half of a matrix

% (Method-1)
function m = halfmeans(A)
%dimension of the matrix
[numrows numclmns] = size(A)
%two halves
h1 = A(1:numrows, 1:0.5*numclmns)
h2 = A(1:numrows, 0.5*numclmns+1:numclmns)
%sum
sumh1 = sum(h1, 'all')
sumh2 = sum(h2, 'all')
%mean
mh1 = sumh1/numel(h1)
mh2 = sumh2/numel(h2)
%result
m = [mh1 mh2]
end

% (Method-2)

function m = halfmeans(A)
P = [sum(A(1:numel(A)./2)) sum(A(numel(A)./2+1:numel(A)))]
m = P / (numel(A) ./2)
%Q1 = sum(P(1 : numel(P).*0.5)) ;
%Q2 = sum(P(numel(P).*0.5+1 : numel(P))) ;
%m=[Q1 Q2] ./(numel(A) /2) ;
end
