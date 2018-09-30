function[]=fibnum(n)
c=1;
cv=0;
j=1;
while j~=n+1  || n==1
d(j)=c+cv;
cv=c;
c=d(j);
j=j+1;
if n==1
    break
end
end
format longG
fprintf('Los %d primeros terminos de la serie de Fibonacci son:\n',n)
disp(d')