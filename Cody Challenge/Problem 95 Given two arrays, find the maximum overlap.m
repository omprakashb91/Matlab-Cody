%Problem 95
%Date: 05 Feb 2023
%Revision1
%Accepted solution
function s3 = overlap(s1,s2)
clc;

m=length(s1);
n=length(s2);
    if m>n
        A=s1; B=s2;

    else
        A=s2;
        B=s1;
        m=length(A);
        n=length(B);
    end

    la=length(A);
    lb=length(B);
    prediff=0;
    s3=[];
%Preloop1
    while(lb<m|lb==m)
        C = A(prediff+1:lb);
        D = B;
        if C==D
            s3=A;
            break;
         else
            prediff=prediff+1; %0+1=1
            lb=lb+1;
        end
    end

%Tf = isempty(s3);
if isempty(s3)==false
    s3;
else

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
end
