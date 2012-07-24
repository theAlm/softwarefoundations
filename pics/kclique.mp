input metafun;

numeric i;
numeric j;

numeric k;
k:=16;

numeric radius;
radius:=150;

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

  for i=0 upto (k - 1):

    for j=0 upto i:

      source:=dir(i*(fullCircle/k)) * radius;
      dest:=dir(j*(fullCircle/k)) * radius;

      draw source--dest;

    endfor
  endfor
  
endfig;
end
