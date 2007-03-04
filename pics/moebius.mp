input metafun

numeric i;
numeric j;

numeric k;
k:=8;

numeric innerRadius;
innerRadius:=80;

numeric outerRadius;
outerRadius:=120;

numeric fullCircle;
fullCircle:=360;

pair source;
pair dest;

pickup pencircle scaled 2.0;

beginfig(1)

  for i=0 upto (k - 1):

    dest:=dir(i*(fullCircle/k)) * innerRadius;

    freedotlabel("", dest, origin);
    
  endfor;

  for i=0 upto (k - 1):

    dest:=dir(i*(fullCircle/k)) * outerRadius;

    freedotlabel("", dest, origin);
    
  endfor;

  for i=0 upto (k - 1):

    source:=dir(i*(fullCircle/k)) * innerRadius;
    dest:=dir(i*(fullCircle/k)) * outerRadius;

    draw source--dest;
      
  endfor;

  for i=0 upto (k - 1):

    source:=dir(i*(fullCircle/k)) * outerRadius;

    if ((i+1)=k):
      dest:=dir(0) * outerRadius;
    else:
      dest:=dir((i+1)*(fullCircle/k)) * outerRadius;
    fi

    draw source--dest;
      
  endfor;

  for i=0 upto (k - 1):

    j:=i+3;

    if (j > (k-1)):
      j:=j - k;
    fi
    
    source:=dir(i*(fullCircle/k)) * innerRadius;
    dest:=dir(j*(fullCircle/k)) * innerRadius;
    
    draw source--dest;
      
  endfor;

endfig;
end
