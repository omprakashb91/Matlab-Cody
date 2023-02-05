%Problem 95
%Given two arrays, find the maximum overlap
%This code provides solution if the overlap happens extreme ends not inbetween the array
%Date: 05 Feb 2023
function s3 = overlap(s1,s2)
clc;
m=length(s1);
n=length(s2);
    if m>n
        A=s1; B=s2;
    else
        A=s2; B=s1;
    end
%Loop1 TAIL PORTION
    la=length(A);
    lb=length(B);
    while (lb==1|lb>1)
    diff=la-lb;
    C = A(diff+1:la);
    D = B(1:lb);
        if C==D
        Ans1 = [A(1:diff) B];
            break;
        else
            lb=lb-1;
        Ans1 = [A B];
        end
    end
%Loop2 HEAD PORTION
    la=length(A);
    lb=length(B);
    diff = la-lb;
    while(lb>0)
    C = A(1 : lb);
    D = B(diff-(m-n)+1 : n);
        if C==D
           Ans2 = [B A(lb+1:m)];
           break;
        else
            lb=lb-1;
            diff=diff+1;
            Ans2 = [B A];
        end
    end
%Comparision
    if length(Ans1)<length(Ans2)
        s3=Ans1;
    else
        s3=Ans2;
    end
end
