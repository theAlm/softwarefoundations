**Eine Einführung in Coq **



[IntroductionToCoq.pdf](https://gitlab.cs.hs-rm.de/almeroth/softwarefoundations/blob/master/IntroductionToCoq.pdf) sind die ".pdf"-Seiten einer Zusammenfassung über [Coq](https://coq.inria.fr/).
Coq ist eine Software zur semi-automatischen formalen Beweisführung.

Diese Einführung verwendet das Skript 'mbasics' von [Steffen Reith](https://www.hs-rm.de/de/hochschule/personen/reith-steffen/) über eine Einführung in Mathematische Grundlagen für Studierende der Informatik.



Zum clonen des Skriptes sei auf Git-Submodule verwiesen.

    [git-Online-Dokumentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
    

Die [Latex2_{\epsilon}](https://www.latex-project.org/)-Dateien können wie folgt gebaut werden. 

IntroductionToCoq.tex ist das Main-Latex-File und das Skript kann gebaut werden mit:

    xelatex IntroductionToCoq.tex
    bibtex IntroductionToCoq.tex
    xelatex IntroductionToCoq.tex
    bibtex IntroductionToCoq.tex
    showpdf

Das Glossar benutz das Latex-Paket [glossaries-extra](https://www.ctan.org/pkg/glossaries-extra). Falls das Glossar neu gebaut werden muss, müssen extrene Anwendung aufgerufen werden vor dem kompilieren mit xelatex.

    makeglossaries-lite.lua "TntroductionToCoq"
    makeglossaries "IntroductionToCoq"
    
 
    
    

Das ist eine kurze [Präsentation]( https://gitlab.cs.hs-rm.de/almeroth/coq_praesentation.git) über den Beweisassitenten.
    
    

[Steffen Reith](mailto:Steffen.Reith@hs-rm.de) ist Maintainer diese Repositories. 

    
Aufgrund des Styleguides der Hochschule RheinMain ist das Skript nur für die interne Verwendung freigegeben.

Für Fragen und Anmerkungen bin ich zu erreichen unter [tanja.almeroth@mailbox.org](mailto:tanja.almeroth@mailbox.org).
