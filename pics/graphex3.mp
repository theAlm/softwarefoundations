input metaobj

beginfig(1);

  % Positionen der Zustaende berechnen
  z0=(2cm,3.5cm);
  z1=(3.75cm,2.25cm);
  z2=(3.25cm,0cm);
  z3=(0.75cm,0cm);
  z4=(0.25cm,2.25cm);

  % Alle Zustände erzeugen
  newCircle.K0("1") "filled(false)", "circmargin(1mm)";
  newCircle.K1("2") "filled(false)", "circmargin(1mm)";
  newCircle.K2("3") "filled(false)", "circmargin(1mm)";
  newCircle.K3("4") "filled(false)", "circmargin(1mm)";
  newCircle.K4("5") "filled(false)", "circmargin(1mm)";

  % Position der Zustände festlegen
  K0.c=z0;
  K1.c=z1;
  K2.c=z2;
  K3.c=z3;
  K4.c=z4;

  % Knoten zeichnen
  drawObj(K0);
  drawObj(K1);
  drawObj(K2);
  drawObj(K3);
  drawObj(K4);

  % Default ist mit Arrows zeichnen
  setCurveDefaultOption("arrows", "->");

  % Zustandsuebergaenge zeichnen
  ncline(K0)(K1) "linewidth(1bp)";
  ncline(K1)(K2) "linewidth(1bp)";
  ncline(K2)(K3) "linewidth(1bp)";
  ncline(K3)(K4) "linewidth(1bp)";
  ncline(K4)(K0) "linewidth(1bp)";

endfig;

end
