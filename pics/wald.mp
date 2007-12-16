input metafun;
input mp-tool;

pickup pencircle scaled 2.0;

beginfig(1)

  % Positionen der Knoten
   z1=(1.00cm, 1.00cm);
   z2=(3.00cm, 1.00cm);
   z3=(5.00cm, 1.00cm);
   z4=(7.00cm, 1.00cm);
   z5=(1.00cm, 2.00cm);

   z6=(2.00cm, 2.00cm);
   z7=(3.00cm, 2.00cm);
   z8=(5.00cm, 2.00cm);
   z9=(6.00cm, 2.00cm);
  z10=(7.00cm, 2.00cm);

  z11=(1.00cm, 3.00cm);
  z12=(3.00cm, 3.00cm);
  z13=(5.00cm, 3.00cm);
  z14=(7.00cm, 3.00cm);
  z15=(2.00cm, 4.00cm);

  z16=(4.00cm, 4.00cm);
  z17=(6.00cm, 4.00cm);
  z18=(1.00cm, 5.00cm);
  z19=(3.00cm, 5.00cm);
  z20=(5.00cm, 5.00cm);

  z21=(7.00cm, 5.00cm);
  z22=(1.00cm, 6.00cm);
  z23=(2.00cm, 6.00cm);
  z24=(3.00cm, 6.00cm);
  z25=(5.00cm, 6.00cm);

  z26=(6.00cm, 6.00cm);
  z27=(7.00cm, 6.00cm);
  z28=(1.00cm, 7.00cm);
  z29=(3.00cm, 7.00cm);
  z30=(5.00cm, 7.00cm);

  z31=(7.00cm, 7.00cm);

  z41=(14.00cm, 6.00cm);
  z42=(11.00cm, 4.00cm);
  z43=(14.00cm, 4.00cm);
  z44=(17.00cm, 4.00cm);
  z45=(23.00cm, 4.00cm);

  z46=(10.00cm, 2.00cm);
  z47=(12.00cm, 2.00cm);
  z48=(15.00cm, 2.00cm);
  z49=(17.00cm, 2.00cm);
  z50=(19.00cm, 2.00cm);

  z51=(21.00cm, 2.00cm);
  z52=(22.00cm, 2.00cm);
  z53=(23.00cm, 2.00cm);
  z54=(24.00cm, 2.00cm);
  z55=(25.00cm, 2.00cm);

  %freedotlabel(decimal 1, z1, (0cm,0cm));
  freedotlabel("", z1, (0cm,0cm));
  freedotlabel("",  z1, (0cm,0cm));
  freedotlabel("",  z2, (0cm,0cm));
  freedotlabel("",  z3, (0cm,0cm));
  freedotlabel("",  z4, (0cm,0cm));
  freedotlabel("",  z5, (0cm,0cm));

  freedotlabel("",  z6, (0cm,0cm));
  freedotlabel("",  z7, (0cm,0cm));
  freedotlabel("",  z8, (0cm,0cm));
  freedotlabel("",  z9, (0cm,0cm));
  freedotlabel("", z10, (0cm,0cm));

  freedotlabel("", z11, (0cm,0cm));
  freedotlabel("", z12, (0cm,0cm));
  freedotlabel("", z13, (0cm,0cm));
  freedotlabel("", z14, (0cm,0cm));
  freedotlabel("", z15, (0cm,0cm));

  freedotlabel("", z16, (0cm,0cm));
  freedotlabel("", z17, (0cm,0cm));
  freedotlabel("", z18, (0cm,0cm));
  freedotlabel("", z19, (0cm,0cm));
  freedotlabel("", z20, (0cm,0cm));

  freedotlabel("", z21, (0cm,0cm));
  freedotlabel("", z22, (0cm,0cm));
  freedotlabel("", z23, (0cm,0cm));
  freedotlabel("", z24, (0cm,0cm));
  freedotlabel("", z25, (0cm,0cm));

  freedotlabel("", z26, (0cm,0cm));
  freedotlabel("", z27, (0cm,0cm));
  freedotlabel("", z28, (0cm,0cm));
  freedotlabel("", z29, (0cm,0cm));
  freedotlabel("", z30, (0cm,0cm));

  freedotlabel("", z31, (0cm,0cm));

  freedotlabel("", z41, (0cm,0cm));
  freedotlabel("", z42, (0cm,0cm));
  freedotlabel("", z43, (0cm,0cm));
  freedotlabel("", z44, (0cm,0cm));
  freedotlabel("", z45, (0cm,0cm));

  freedotlabel("", z46, (0cm,0cm));
  freedotlabel("", z47, (0cm,0cm));
  freedotlabel("", z48, (0cm,0cm));
  freedotlabel("", z49, (0cm,0cm));
  freedotlabel("", z50, (0cm,0cm));

  freedotlabel("", z51, (0cm,0cm));
  freedotlabel("", z52, (0cm,0cm));
  freedotlabel("", z53, (0cm,0cm));
  freedotlabel("", z54, (0cm,0cm));
  freedotlabel("", z54, (0cm,0cm));
  freedotlabel("", z55, (0cm,0cm));
  
  draw  z1-- z5;
  draw  z5--z11;
  draw  z5-- z6;
  draw  z6-- z7;
  draw  z7--z12;
  draw  z2-- z7;

  draw  z8--z13;
  draw  z8-- z3;
  draw  z8-- z9;
  draw  z9--z10;
  draw z10--z14;
  draw z10-- z4;

  draw z22--z28;
  draw z22--z18;
  draw z22--z23;
  draw z23--z24;
  draw z24--z29;
  draw z24--z19;

  draw z25--z30;
  draw z25--z20;
  draw z25--z26;
  draw z26--z27;
  draw z27--z31;
  draw z27--z21;

  draw z16--z17;
  draw z17--z26;
  draw z17-- z9;
  draw z16--z15;
  draw z15--z23;
  draw z15-- z6;

  draw z41--z42;
  draw z41--z43;
  draw z41--z44;
  draw z41--z45;
  draw z42--z46;

  draw z42--z47;
  draw z44--z48;
  draw z44--z49;
  draw z44--z50;
  draw z45--z51;

  draw z45--z52;
  draw z45--z53;
  draw z45--z54;
  draw z45--z55;

endfig;
end
