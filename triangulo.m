function[]=triangulo(a,b,c)
if a==b && b==c
    disp('Triángulo Equilátero')
else if ~(a==b && b==c) && (a==b || a==c || b==c)
        disp('Triangulo Isósceles')
    else disp('Triángulo Escaleno')
    end
end