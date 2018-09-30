date=input('Introduzca una fecha: ','s');
day=str2double(date(1,1:2));
month=str2double(date(1,4:5));
year=str2double(date(1,7:8));
days=0;
for m=1:month-1
    if m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12
        days=days+31;
    elseif rem(year,4)==0 && m==2
        days=days+29;
    elseif rem(year,4)~=0 && m==2
        days=days+28;
    else days=days+30;
    end
end
d=days+day;
fprintf('El número de días transcurridos desde el inicio del año es: %d\n',d)