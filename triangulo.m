function[]=triangulo(a,b,c)
if a==b && b==c
    disp('Tri�ngulo Equil�tero')
else if ~(a==b && b==c) && (a==b || a==c || b==c)
        disp('Triangulo Is�sceles')
    else disp('Tri�ngulo Escaleno')
    end
end