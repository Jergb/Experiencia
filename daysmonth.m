m=input('Escriba el n�mero correspondiente a un mes:  ');
if m>12 || m<=0
    disp('El valor introducido para el mes es incorrecto')
else
    y=input('Escriba un a�o:  ');
    if rem(y,4)==0 && (rem(y,100)~=0 || rem(y,400)==0) && m==2
        disp('El mes tiene 29 d�as')
    elseif m==2
        disp('El mes tiene 28 d�as')
    elseif m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12
        disp('El mes tiene 31 d�as')
    else disp('El mes tiene 30 d�as')
    end
end