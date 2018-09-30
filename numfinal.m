x=input('Ingrese un número:  ');
xt=num2str(x);
t=size(xt);t=t(1)*t(2);
if str2double(xt(t))==2 || str2double(xt(t))==5 || str2double(xt(t))==8
    y=x^2;d=[num2str(x),'^2=',num2str(y)];disp(d)
elseif str2double(xt(t))==4 || str2double(xt(t))==7 || str2double(xt(t))==9
    y=5*x;    d=[num2str(x),'*5=',num2str(y)];disp(d)
else y=x; d=[num2str(x),'=',num2str(y)];disp(d)
end