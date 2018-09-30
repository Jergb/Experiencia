function[nc,b]=compb(nc,c)
if c<nc
    b=nc-c;
    nc=c;
else b=0;
end 