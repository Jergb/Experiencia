d=input('Introduzca un número correspondiente a un día del mes:  ');
m=input('Introduzca un número correspondiente a un mes:  ');
y=input('Introduzca un año:  ');
switch d
    case 1
        if rem(y,4)==0 && ( rem(y,100)~=0 || rem(y,400)==0) && m==3
            dp=29;mp=m-1;yp=y;
        elseif m==3
            dp=28;mp=m-1;yp=y;
        elseif m==1
            dp=31;mp=12;yp=y-1;
        elseif m==2 ||m==4 || m==6 || m==8 || m==9 || m==11
            dp=31;mp=m-1;yp=y-1;
        else dp=30;mp=m;yp=y;
        end
    otherwise
        dp=d-1;mp=m;yp=y;
end

if (rem(y,4)==0 && ( rem(y,100)~=0 || rem(y,400)==0) && m==2....
        && d>29) || (~(rem(y,4)==0 && ( rem(y,100)~=0 || ...
        rem(y,400)==0)) && m==2 && d>28) || ((m==1 ||m==3....
        || m==5 || m==7 || m==8 || m==10 || m==12) && d>31)...
        || ((m==2 || m==4 || m==6 || m==9 || m==11) && d>30) || (m>12)
    disp('Está cometiendo un error al introducir la fecha')
else
    fprintf('La fecha anterior a %d/%d/%d es %02d/%02d/%02d\n',d,m,y,dp,...
        mp,yp)
end
