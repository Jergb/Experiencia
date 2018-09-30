function[]=primosmenores(n)
a=2:n;
r=0;
if n<=0
    disp('Sólo se trabaja con valores mayores a 1')
else
    while a(1)^2<n
        b=rem(a,a(1))==0;
        a(b)=[];
        r=r+1;
        d(r)=a(1);
    end
    if n<=4 && n>2
        d=3;a=[];
        (cat(2,[1,2],d,a))'
    elseif n<4 && n<=2
        d=[];a=d;
        (cat(2,[1,2],d,a))'
    else d(r)=[];(cat(2,[1,2],d,a))'
    end
end
end