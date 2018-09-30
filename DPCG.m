%Deflexión para una placa cuadrada

clear,clc,close
long=input('Longitud de la placa: '); %Ingreso por teclado de la longitud de la placa
q=input('Ingrese la carga: '); %Se piden que ingrese q por teclado
u=input('Ingrese la relación de Poisson: '); %Ingreso de u por teclado
h=input('Ingrese el espesor de la placa: '); %Ingreso de h por teclado
E=input('Ingrese el módulo de elasticidad: '); %Ingreso de E por teclado
dx=input('dx: '); %Ingreso de dx por teclado
%Se trabaja con dx=dy, dado que el análisis se desarrolla para placas cuadradas
mu=long/dx; %mu es el número de partes en que queda dividida la placa
s=(mu-1)^2; %s es la cantidad de nodos que se van a analizar
U=int8(zeros(s)); %Se crea una matriz de ceros del tamaño de s, para guardar las ecuaciones de la matriz de cofactores, el espacio en la memoria
%que ocupa cada valor dentro de la matriz correponde a 1 bit
D=E*h^3/(12*(1-u^2)); %Ecuación para determinar D
C=q/D*dx^2; %Ecuación para determinar C, C es el valor de la matriz de terminos independientes del sitema de ecuaciones resultante
C1=zeros(s,1); %se crea una matriz de ceros con una columna y número de filas igual a n
C1(:,1)=C; %Se le asigna a cada cero el valor de C, para tener la matriz de terminos independientes del sistema
%D=parámetro de rigidez
%h=Espesor de la placa
%E=módulo de elasticidad
%u=Relación de Poisson

%Solución de la ecuación de Poisson con condiciones de frontera de Neumann
n=sqrt(s); %n es la raiz cuadrada de s
Ub=@(x,y,n) (x-1)*n+y; %Se crea una función anonima, con el fin de poder ordenar las incógnitas en la matriz de cofactores
l=1; %Se define l, que será el indicador de la fila en la que se debe ubicar cada ecuación
i(n)=0; %Esto es definir un vector de ceros para i, con el fin de realizar más rapido las operaciones
j(n)=0; %Esto es definir un vector de ceros para i, con el fin de realizar más rapido las operaciones
for i=1:n;
    for j=1:n;
            a=i-1;
            b=j-1;
            c=i+1;
            d=j+1;
            e=a<1;
            f=b<1;
            g=c>n;
            h=d>n;
            if ~e && ~f && ~g && ~h
                d=Ub(i+1,j,n);U(l,d)=1;
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j+1,n);U(l,d)=1;
                d=Ub(i,j-1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif e && ~f && ~g && ~h
               d=Ub(i+1,j,n);U(l,d)=1;
               d=Ub(i,j+1,n);U(l,d)=1;
               d=Ub(i,j-1,n);U(l,d)=1;
               d=Ub(i,j,n);U(l,d)=-4;
               l=l+1;
            elseif ~e && f && ~g && ~h
                d=Ub(i+1,j,n);U(l,d)=1;
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j+1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif ~e && ~f && g && ~h
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j+1,n);U(l,d)=1;
                d=Ub(i,j-1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif ~e && ~f && ~g && h
                d=Ub(i+1,j,n);U(l,d)=1;
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j-1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif ~e && ~f && g && h
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j-1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif ~e && f && g && ~h
                d=Ub(i-1,j,n);U(l,d)=1;
                d=Ub(i,j+1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif e && ~f && ~g && h
                d=Ub(i+1,j,n);U(l,d)=1;
                d=Ub(i,j-1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            elseif e && f && ~g && ~h
                d=Ub(i+1,j,n);U(l,d)=1;
                d=Ub(i,j+1,n);U(l,d)=1;
                d=Ub(i,j,n);U(l,d)=-4;
                l=l+1;
            end
    end
end
%Z=U, no se define para ahorrar espacio en la memoria
U=double(U); %Se convierte a double para poder aplicar la inversa
[L U]=lu(U);
y=L\C1;
Ux=U\y;
y=L\Ux*dx^2;
Zx=U\y;
ZZ=zeros(n+2);
Zx=vec2mat(Zx,n);
i(n+2)=0;
j(n+2)=0;
for i=2:n+1
    for j=2:n+1
        ZZ(i,j)=Zx(i-1,j-1);
    end
end
[X,Y] = meshgrid(0:dx:long);    
surfc(X,Y,ZZ),colormap(summer),colorbar,grid