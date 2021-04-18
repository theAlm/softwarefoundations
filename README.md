**Eine Einführung in Coq**



[IntroductionToCoq.pdf](git@github.com:theAlm/softwarefoundations/blob/master/IntroductionToCoq.pdf) sind die ".pdf"-Seiten einer Zusammenfassung über [Coq](https://coq.inria.fr/). Coq ist eine Software zur semi-automatischen formalen Beweisführung.

Diese Einführung verwendet das Vorlesungskript "Elementare mathematische Begriffe, Probleme und Schreibweisen" von [Steffen Reith](https://www.hs-rm.de/de/hochschule/personen/reith-steffen/) über eine Einführung in Mathematische Grundlagen für Studierende der Informatik.
Zusätzlich sind Listings aus dem [RT-proof Project](https://github.com/theAlm/prosa_working_dir.git) in der Zusammenfassung zu Demonstrationszwecken integriert. 
    
    
Zum Clonen des Skriptes müssen Git-Submodule geklont werden:
    
        $ git clone git@github.com:theAlm/coq_praesentation.git/softwarefoundations.git
        $ git submodule init 
        $ git submodlue update

Weitere informationen zum Arbeiten mit git submodules sind in der [git-Online-Dokumentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) zu finden.
    

Die [LaTeX2e](https://www.latex-project.org/)-Dateien können wie im folgenden beschrieben gebaut werden: 

[IntroductionToCoq.tex](https://github.com/theAlm/coq_praesentation.git/softwarefoundations/blob/master/IntroductionToCoq.tex) ist die Latex-Master-Datei und das Dokument kann gebaut werden mittels den folgenden Komandos:

        $ xelatex IntroductionToCoq.tex
        $ bibtex IntroductionToCoq.tex
        $ xelatex IntroductionToCoq.tex
        $ bibtex IntroductionToCoq.tex
        $ showpdf 



 Das Glossar des Vorlesungskriptes wurde erstellt mit dem Latex-Paket [glossaries-extra](https://www.ctan.org/pkg/glossaries-extra). Falls das Glossar neu erstellt werden muss, müssen externe Anwendung aufgerufen werden vor dem Kompilieren mitttels latex.
    
        $ makeglossaries-lite.lua "TntroductionToCoq"
        $ makeglossaries "IntroductionToCoq"
        $ latex IntroductionToCoq.tex
    

Das ist eine kurze [Präsentation](https://github.com/theAlm/coq_praesentation.git) über den Beweisassitenten.
    

