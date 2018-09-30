function[]=mcd(a,b)
A=a;B=b;c=1;
while c~=0
    if a>=b
        c=rem(A,B);
        A=B;        B=c;
        if c==0
            ans=b
        else b=c;
        end
    else c=rem(B,A);
        B=A;        A=c;
        if c==0
            ans=a
        else a=c;
        end
    end
end