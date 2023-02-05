%Date: 12 Nov 2022
% Problem 672
% Longest run of consecutive numbers

function val = longrun(a)
[m n] = size(a)
l=numel(a)

if l>1
%______________Segment(begin)
if (m==1 && n>1) %to check if it's a row vector
    %_________for rows
     b=ones(1,l)
  for x = 1:(l-1)
      if a(x+1) == a(x)
        b(x+1) = b(x)+1
      end
   end
    [mval mind] = max(b)
     index = find(b==mval)
     val = a(index)
end

if(m>1 && n==1) %to check if it's a column vector
    %_________for column
  b=ones(l,1)
  for x = 1:(l-1)
      if a(x+1) == a(x)
        b(x+1) = b(x)+1
      end
   end
    [mval mind] = max(b)
    index = find(b==mval)
    val = a(index)
end
%____________segment(end)
else
val = a(1)
end

end
