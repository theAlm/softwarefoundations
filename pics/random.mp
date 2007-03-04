input metafun

numeric i;
numeric j;

numeric k;
k:=32;

numeric radius;
radius:=600;

numeric maxEdge;
maxEdge:=256;

numeric fullCircle;
fullCircle:=360;

pair source;
pair dest;

pickup pencircle scaled 2.0;

beginfig(1)

  for i=0 upto (k - 1):

    dest:=dir(i*(fullCircle/k)) * radius;

    freedotlabel(decimal i, dest, origin);
    
  endfor;

  for i=0 upto (maxEdge - 1):

    source:=dir(round(uniformdeviate (k-1))*(fullCircle/k)) * radius;
    dest:=dir(round(uniformdeviate (k-1))*(fullCircle/k)) * radius;

    draw source--dest;

  endfor
  
endfig;
end
