function[]=numero(n)
if n>=0 && n<=10
else  disp('El n�mero introducido no est� en el intervalo [0, 10]')
    disp('Introduzca otro valor')
    n=input('numero=');
    numero(n)
end
end