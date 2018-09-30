function[]=bisiesto(y)
if rem(y,4)==0 && ( rem(y,100)~=0 || rem(y,400)==0)
    fprintf('\n%d es un año bisiesto\n',y)
else fprintf('\n%d no es un año bisiesto\n',y)
end
end