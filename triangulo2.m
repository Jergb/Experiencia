function[]=triangulo2(a,b,c)
if ((b+c)>a && (a+c)>b && (a+b)>c) && ~(a==0 || b==0 || c==0)
    if a==b && b==c
        disp('Triángulo Equilátero')
    elseif ~(a==b && b==c) && (a==b || a==c || b==c)
        disp('Triangulo Isósceles')
    else disp('Triángulo Escaleno')
    end
else disp('Las dimensiones introducidas no son propias de un triángulo')
end
end