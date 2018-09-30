function[]=perfect100(v)
u=0;
tic
for n=100:v
    s=0; i=1; m=1e5; a=0;
    while a<n
        for a=i:m
            if rem(n,a)==0 && a~=n
                s=s+a;
            end
            if a==m && n>m
                i=i+1e5;  m=m+1e5;
            end
            if a==n
                break
            end
        end
    end
    if a==s
        u=u+1; num(u)=n;
    end
end
if u==0
    disp('No hay números perfectos en el intervalo definido')
else num
end
toc
end
