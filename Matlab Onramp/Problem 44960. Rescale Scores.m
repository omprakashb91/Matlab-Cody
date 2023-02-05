% Date: 12 Nov 2022
% Problem 44960
% Rescale Scores

function X=rescale_scores(X)
[M N] = size(X)             %count rows & columns
X(:,end) = 0                  %empty the last column
Y = sum(X,2)                  %sum of elements across rows
Y = Y./(N-1)                  %get the average value

for a=1:M
    if Y(a)>90 & Y(a)<100
    Y= Y-90;
    Y= Y/10;
    Y= Y+3;
    end
    if Y(a)>80 & Y(a)<90
    Y= Y-80;
    Y= Y/10;
    Y= Y+2;
    end
    if Y(a)>70 & Y(a)<80
    Y= Y-70;
    Y= Y/10;
    Y= Y+1;
    end
    if Y(a)>60 & Y(a)<70
    Y= Y-60;
    Y= Y/10;
    Y= Y+0;                   %not necessary
    end
end
X(:,end) = Y                  %Copy the avg. into last column
end
%(Result1: submitted with size 176, Solution 9743718)
