m=input('Escriba el número correspondiente a un mes:  ');
if m>12 || m<=0
    disp('El valor introducido para el mes es incorrecto')
else
    y=input('Escriba un año:  ');
    if rem(y,4)==0 && (rem(y,100)~=0 || rem(y,400)==0) && m==2
        disp('El mes tiene 29 días')
    elseif m==2
        disp('El mes tiene 28 días')
    elseif m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12
        disp('El mes tiene 31 días')
    else disp('El mes tiene 30 días')
    end
end