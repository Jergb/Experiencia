function[]=bisiesto(y)
if rem(y,4)==0 && ( rem(y,100)~=0 || rem(y,400)==0)
    fprintf('\n%d es un a�o bisiesto\n',y)
else fprintf('\n%d no es un a�o bisiesto\n',y)
end
end