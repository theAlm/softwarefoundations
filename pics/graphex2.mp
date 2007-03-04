input metaobj

beginfig(1);

  % Positionen der Zustaende berechnen
  z0=(0cm,3cm);
  z1=(0cm,2cm);
  z2=(0cm,1cm);
  z3=(0cm,0cm);
  z4=(2cm,3.5cm);
  z5=(2cm,2.5cm);
  z6=(2cm,1.5cm);
  z7=(2cm,0.5cm);
  z8=(2cm,-0.5cm);

  % Alle Zustände erzeugen
  newCircle.K0("1") "filled(false)", "circmargin(1mm)";
  newCircle.K1("2") "filled(false)", "circmargin(1mm)";
  newCircle.K2("3") "filled(false)", "circmargin(1mm)";
  newCircle.K3("4") "filled(false)", "circmargin(1mm)";
  newCircle.K4("5") "filled(false)", "circmargin(1mm)";
  newCircle.K5("6") "filled(false)", "circmargin(1mm)";
  newCircle.K6("7") "filled(false)", "circmargin(1mm)";
  newCircle.K7("8") "filled(false)", "circmargin(1mm)";
  newCircle.K8("9") "filled(false)", "circmargin(1mm)";

  % Position der Zustände festlegen
  K0.c=z0;
  K1.c=z1;
  K2.c=z2;
  K3.c=z3;
  K4.c=z4;
  K5.c=z5;
  K6.c=z6;
  K7.c=z7;
  K8.c=z8;

  % Knoten zeichnen
  drawObj(K0);
  drawObj(K1);
  drawObj(K2);
  drawObj(K3);
  drawObj(K4);
  drawObj(K5);
  drawObj(K6);
  drawObj(K7);
  drawObj(K8);

  % Default ist mit Arrows zeichnen
  setCurveDefaultOption("arrows", "->");

  % Zustandsuebergaenge zeichnen
  ncline(K0)(K4) "linewidth(1bp)";
  ncline(K0)(K5) "linewidth(1bp)";
  ncline(K0)(K8) "linewidth(1bp)";
  ncline(K1)(K6) "linewidth(1bp)";
  ncline(K2)(K7) "linewidth(1bp)";
  ncline(K3)(K7) "linewidth(1bp)";

endfig;

end
