function[pn,val]=suf(val,bil,cbil)
Val=rem(val,bil);
pbil=floor(val/bil);
pbil=pbil*bil;
[pn, VAL]=compb(pbil,cbil);
val=VAL+Val;
end
