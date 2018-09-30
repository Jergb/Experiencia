clc,clear
n=input('monto: ');
c2=2e3*1e3; c5=5e3*1e3; c10=1e4*5e2; c20=2e4*25e2; c50=5e4*2e2;
s=c2+c5+c10+c20+c50;
b1=2e3;
p2=0;p5=0;p10=0;p20=0;p50=0;
while s~=0
    if n>s
        disp('El dinero almacenado en el cajero no es suficiente para satisfacer su pedido')
        fprintf('Se le sugiere pedir un retiro de $%d',s)
        n=input('\nmonto: ');
    end
    c=n;
    [ec50, v]=suf(c,50e3,c50);
    [ec20, w]=suf(v,20e3,c20);
    [ec10, x]=suf(w,10e3,c10);
    [ec5, y]=suf(x,5e3,c5);
    [ec2, z]=suf(y,2e3,c2);
    if y==3e3 && n>10e3
        if ec10>=10e3
            ec10=ec10-10e3;
        elseif ec20>=20e3 && ec10<10e3
            ec20=ec20-20e3;
            ec10=ec10+10e3;
        elseif ec20<20e3 && ec10<10e3
            if ec50==50e3
                ec50=0;
                ec20=40e3;
            end
        end
        ec5=5e3;
        ec2=8e3;
    elseif y==1e3 && ec2==0 && ec5==5e3
        ec5=0;
        ec2=6e3;
    elseif y==1e3 && n>10e3 && ec5==0
        
        if ec10>=10e3
            ec10=ec10-10e3;
        elseif ec20>=20e3 && ec10<10e3
            ec20=ec20-20e3;
            ec10=ec10+10e3;
        elseif ec20<20e3 && ec10<10e3
            if ec50==50e3
                ec50=0;
                ec20=40e3;
            end
        end
        ec5=5e3;
        ec2=6e3;
    end
    p50=ec50/50e3;
    p20=ec20/20e3;
    p10=ec10/10e3;
    p5=ec5/5e3;
    p2=ec2/2e3;
    et=ec50+ec20+ec10+ec5+ec2;
    if et~=n && n>2e3
        if mod(n,100)==0 && n-1e3~=0 && n-100<s
            disp('El dinero almacenado en el cajero no es suficiente para satisfacer su pedido')
            fprintf('Se le sugiere pedir un retiro de $%d',n-100)
            n=input('\nmonto: ');
        else disp('El dinero almacenado en el cajero no es suficiente para satisfacer su pedido')
            fprintf('Se le sugiere pedir un retiro de $%d',et)
            n=input('\nmonto: ');
        end
    elseif n<2e3
        disp('El dinero almacenado en el cajero no es suficiente para satisfacer su pedido')
        fprintf('Se le sugiere pedir un retiro de $%d',2e3)
        n=input('\nmonto: ');
    else
        e=[p50 p20 p10 p5 p2];
        eb=[50e3 20e3 10e3 5e3 2e3];
        ex=find(e==0);
        e(ex)=[];
        eb(ex)=[];
        siz=size(e);
        b=0;
        ma=0;
        for d=1:2:siz(2)*2
            b=b+1;
            ma(1,d)=e(b);
            ma(1,d+1)=eb(b);
        end
        fprintf('\nSe entregan $%d de la siguiente manera:\n',et)
        Billetes='%d billete(s) de $%d\n' ;
        fprintf(Billetes,ma)
        c2=c2-ec2;c5=c5-ec5;c10=c10-ec10;c20=c20-ec20;c50=c50-ec50;
        s=c2+c5+c10+c20+c50;
        if s==0 && s<n
            disp('El cajero está temporalmente fuera de servico')
            break
        else
            fprintf('\n////////SIGUIENTE RETIRO////////\n'),
            n=input('\nmonto: ');
            
        end
    end
end
