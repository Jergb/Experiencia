function[]=interv_xab(x,a,b)
if x>a && x<b
    fprintf('%d est� en el intervalo comprendido entre %d y %d\n\n',...
        x,a,b)
elseif a>b
    disp('El intervalo no ha sido definido de manera correcta'),...
        fprintf('\n')
else
    fprintf('%d no est� en el intervalo comprendido entre %d y %d\n\n',...
        x,a,b)
end
end