**Eine Einführung in Coq **



[IntroductionToCoq.pdf](https://gitlab.cs.hs-rm.de/almeroth/softwarefoundations/blob/master/IntroductionToCoq.pdf) sind die ".pdf"-Seiten einer Zusammenfassung über [Coq](https://coq.inria.fr/). Coq ist eine Software zur semi-automatischen formalen Beweisführung.

Diese Einführung verwendet das Vorlesungskript "Elementare mathematische Begriffe, Probleme und Schreibweisen" von [Steffen Reith](https://www.hs-rm.de/de/hochschule/personen/reith-steffen/) über eine Einführung in Mathematische Grundlagen für Studierende der Informatik.
Zusätzlich sind Listings aus dem [RT-proof Project](https://gitlab.cs.hs-rm.de/almeroth/prosa_working_dir.git) in der Zusammenfassung zu Demonstrationszwecken integriert. 
    
    
Zum clonen des Skriptes müssen Git-Submodule geklont werden:
    
        $ git clone git@gitlab.cs.hs-rm.de:almeroth/softwarefoundations.git
        $ git submodule init 
        $ git submodlue update

Weitere informationen zum arbeiten mit git submodules sind in der [git-Online-Dokumentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) zu finden.
    

Die [Latex 2_{\epsilon}](https://www.latex-project.org/)-Dateien können wie im folgenden beschrieben gebaut werden: 

1. [IntroductionToCoq.tex](https://gitlab.cs.hs-rm.de/almeroth/softwarefoundations/blob/master/IntroductionToCoq.tex) ist die Latex-Master-Datei und das Dokument kann gebaut werden mittels den folgenden Komandos:
     
     $ xelatex IntroductionToCoq.tex
     $ bibtex IntroductionToCoq.tex
     $ xelatex IntroductionToCoq.tex
     $ bibtex IntroductionToCoq.tex
     $ showpdf


2. Das Glossar des Vorlesungskriptes wurde erstellt mit dem Latex-Paket [glossaries-extra](https://www.ctan.org/pkg/glossaries-extra). Falls das Glossar neu erstellt werden muss, müssen externe Anwendung aufgerufen werden vor dem Kompilieren mitttels latex.
    
     $ makeglossaries-lite.lua "TntroductionToCoq"
     $ makeglossaries "IntroductionToCoq"
     $ latex IntroductionToCoq.tex
        
 
    
    

Das ist eine kurze [Präsentation]( https://gitlab.cs.hs-rm.de/almeroth/coq_praesentation.git) über den Beweisassitenten.
    

[Steffen Reith](mailto:Steffen.Reith@hs-rm.de) ist Maintainer diese Repositories. 

    
Aufgrund des Styleguides der Hochschule RheinMain ist das Skript nur für die interne Verwendung freigegeben.
Für Fragen und Anmerkungen bin ich zu erreichen unter [tanja.almeroth@mailbox.org](mailto:tanja.almeroth@mailbox.org).
