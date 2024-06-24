# Component: Applicatie

Voor iedere applicatie waarin dataverwerkingen plaatsvinden die gelogd moeten worden gelden de volgende specificaties voor het gedrag.


## Gedrag

De applicatie ***MOET*** een Trace starten voor iedere Dataverwerking waarvan nog geen Trace bekend is.

De applicatie ***MOET*** voor iedere Dataverwerking een logregel wegschrijven in een Logboek. *Log Sampling* is niet toegestaan.

De applicatie ***MOET*** bijhouden of een Dataverwerking geslaagd of mislukt is en dit per Dataverwerking als status meegeven aan het Logboek.

Als een Dataverwerking meerdere Betrokkenen heeft dan ***MOET*** de applicatie voor iedere betrokkene een aparte logregel wegschrijven. Een logregel kan naar 0 of 1 betrokkenen verwijzen.

Als een applicatie aangeroepen kan worden vanuit een andere applicatie ***MOET*** de applicatie Trace Context metadata accepteren bij een dergelijke aanroepen deze metadata kunnen omzetten naar een `foreign_operation` bericht.


## Interface

De Applicatie heeft geen voor deze standaard relevante interface. Voor het uitwisselen van de <a>Trace</a> wordt W3C Trace Context gebruikt.

