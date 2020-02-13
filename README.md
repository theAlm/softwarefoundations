**Ein Vorlesungsskript über den Coq-Proof-Assitenten**



IntroductionToCoq.pdf sind die ".pdf"-Seiten über eine Zusammenfassung über den Coq-Beweis-Assitenten.

Diese Einführung verwendet das Skript 'mbasics' von [Steffen Reith](https://www.hs-rm.de/de/hochschule/personen/reith-steffen/) über eine Einführung in Mathematische Grundlagen für Studierende der Informatik.



Zum clonen des Skriptes sei auf Git-Submodule verwiesen.

    [git-Online-Dokumentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
    

Die [Latex2\epsilon](https://www.latex-project.org/)-Dateien können wie folgt gebaut werden. 

IntroductionToCoq.tex ist das Main-Latex-File und das Skript kann gebaut werden mit:

    xelatex IntroductionToCoq.tex
    bibtex IntroductionToCoq.tex
    xelatex IntroductionToCoq.tex
    bibtex IntroductionToCoq.tex
    showpdf
    

Eine kurze Präsentation für den Professor befindet sich hier:

    https://gitlab.cs.hs-rm.de/almeroth/coq_praesentation.git
    
    

[Steffen Reith](mailto:Steffen.Reith@hs-rm.de) ist Maintainer diese Repositories. 

    
Aufgrund des Styleguides der Hochschule RheinMain ist das Skript nur für die interne Verwendung freigegeben.

Für Fragen und Anmerkungen bin ich zu erreichen unter [tanja.almeroth@mailbox.org](mailto:tanja.almeroth@mailbox.org).
