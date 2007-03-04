input metaobj

beginfig(1);

  % Positionen der Zustaende berechnen
  z0-origin=(3cm,0cm);
  z1-z0=(0cm,-1cm);
  z2-z1=(0cm,-1cm);
  z3-z2=(0cm,-1cm);
  z4-z3=(0cm,-3cm);
  
  % Alle Zustände erzeugen
  newCircle.Zu0("") "filled(true)", "circmargin(1mm)";
  newCircle.Zu1("") "filled(true)", "circmargin(1mm)";
  newCircle.Zu2("") "filled(true)", "circmargin(1mm)";
  newCircle.Zu3("") "filled(true)", "circmargin(1mm)";
  newCircle.Zu4("") "filled(true)", "circmargin(1mm)";

  % Alle Zustände mit einer bounding box umgeben
  newCircle.Zu0S("") "circmargin(2mm)";
  newCircle.Zu1S("") "circmargin(2mm)";
  newCircle.Zu2S("") "circmargin(2mm)";
  newCircle.Zu3S("") "circmargin(2mm)";
  newCircle.Zu4S("") "circmargin(2mm)";
   
  % Position der Zustände festlegen
  Zu0.c=z0; Zu0S.c=z0;
  Zu1.c=z1; Zu1S.c=z1;
  Zu2.c=z2; Zu2S.c=z2;
  Zu3.c=z3; Zu3S.c=z3;
  Zu4.c=z4; Zu4S.c=z4;

  % Beschriftung basteln
  ObjLabel.Obj(Zu0)(btex Start etex) "labdir(top)";
  ObjLabel.Obj(Zu4)(btex akzeptieren / ablehnen etex) "labdir(bot)";
  newBox.zText(btex Zustand etex) "framed(false)";
  zText.c=(6cm,-3cm);
  newBox.zzText(btex Berechnung eines DEA etex) "framed(false)";
  zzText.c=(5.5cm,-0.5cm);
  drawObj(zText,zzText);


  % Zustände zeichnen
  drawObj(Zu0);
  drawObj(Zu1);
  drawObj(Zu2);
  drawObj(Zu3);
  drawObj(Zu4);

  % Default ist mit Arrows zeichnen
  setCurveDefaultOption("arrows", "->");

  % Zustandsuebergaenge zeichnen
  ncline(Zu0)(Zu1) "linewidth(1bp)";
  ncline(Zu1)(Zu2) "linewidth(1bp)";
  ncline(Zu2)(Zu3) "linewidth(1bp)";

  % Zeichne eine punktierte Verbindung
  ncline(z3)(z4) "linewidth(2bp)", "linestyle(dashed evenly)",
                 "arrows()", "offsetA((0,-5mm))", "offsetB((0,5mm))";

  % Pfeile für die Beschriftung
  ncline(zText)(Zu0S);
  ncline(zText)(Zu1S);
  ncline(zText)(Zu2S);
  ncline(zText)(Zu3S);
  ncline(zText)(Zu4S);

endfig;

end
