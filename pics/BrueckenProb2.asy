// Bildgroesse setzen
size(6cm,4.5cm);
unitsize(1cm);

// Abstaende fuer die Labels
real dx=0.35;
real dy=0.35;

// Knotenkoordinaten
pair A=(2,3);
pair B=(0,1.5);
pair C=(4.5,1.5);
pair D=(2,0);

// Knoten zeichen
filldraw(shift(A)*scale(0.075)*unitcircle);
filldraw(shift(B)*scale(0.075)*unitcircle);
filldraw(shift(C)*scale(0.075)*unitcircle);
filldraw(shift(D)*scale(0.075)*unitcircle);

// Labels zeichen 
label("A",A+(0,dy));
label("B",B+(-dx,0));
label("C",C+(dx,0));
label("D",D+(0,-dy));

// Verbindungen zeichnen
draw(B--C);
draw(B{N}..{E}A);
draw(B{NE}..{N}A);
draw(B{S}..{E}D);
draw(B{SE}..{S}D);
draw(A{E}..{SE}C);
draw(D{E}..{NE}C);
