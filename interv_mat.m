function[]=interv_mat(x,a,b)
x=x';t=size(x);t=t(1)*t(2);
for M=1:t
    if x(M)>a && x(M)<b
        fprintf('%d está en el intervalo comprendido entre %d y %d\n',...
            x(M),a,b)
    elseif a>b
        disp('El intervalo no ha sido definido de manera correcta'),...
            fprintf('\n')
    else
        fprintf('%d no está en el intervalo comprendido entre %d y %d\n'...
            ,x(M),a,b)
    end
end
end