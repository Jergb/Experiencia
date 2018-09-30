function[]=ordburbuja(a)
n=size(a);
for i=1:n
    for j=1:n-1
        if a(j)>a(j+1)
            aux=a(j);
            a(j)=a(j+1);
            a(j+1)=aux;
        end
    end
end
a
end