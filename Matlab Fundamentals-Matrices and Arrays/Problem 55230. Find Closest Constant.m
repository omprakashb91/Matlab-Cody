% Problem 55230
% Find Closest Constant

% Method-1
function cc = closestconst(x)
r= [0 1 sqrt(2) exp(1) pi (2*pi)];
d = abs( x - r )
[M,I] = min(d)
cc=r(I)
end

% alternate method
% Method-2
%function cc = closestconst(x)
%r= [0 1 sqrt(2) exp(1) pi (2*pi)];
%for a=1:length(r)
%   d(a) = abs(x-r(a));
%end
%[M,I] = min(d)
%cc=r(I)
%end
