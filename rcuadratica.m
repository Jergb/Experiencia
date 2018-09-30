function[]=rcuadratica(a,b,c)
D=(b^2)-(4*a*c);
y1=(-b+sqrt(D))/2*a;
y2=(-b-sqrt(D))/2*a;
y1=num2str(y1);
y2=num2str(y2);
fprintf('\nLas raices resultantes son:\n\n%s \n%s\n',y1,y2)
end