function[]=numperfect(n)
s=0;
i=1;
m=1e5;
a=0;
while a<n
    for a=i:m
        if rem(n,a)==0 && a~=n
            s=s+a;
        end
        if a==m && n>m
            i=i+1e5;
            m=m+1e5;
        end
        if a==n
            break
        end
    end
end
if n==s
    disp('El número es perfecto')
else
    disp('El número no es perfecto')
end
end