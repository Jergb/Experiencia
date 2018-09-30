function[]=nummay(a,b,c)
if    a==b && b==c
    fprintf('Los números tiene el mismo valor\n')
elseif    a>=b && a>=c
    fprintf('El número mayor es %d'),disp(vpa(a))
elseif b>=a && b>=c
    fprintf('El número mayor es %d\n'),disp(vpa(b))
elseif c>=a && c>=b
    fprintf('El número mayor es %d\n'),disp(vpa(c))
end
end