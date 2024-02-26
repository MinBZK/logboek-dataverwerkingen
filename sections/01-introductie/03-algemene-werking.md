# Algemene werking van de standaard

Applicaties loggen metadata over Dataverwerkingen in een daarvoor ingerichte softwaretoepassing, het Logboek Dataverwerkingen. Elke Dataverwerking wordt apart gelogd. Dataverwerkingen binnen dezelfde context (bijvoorbeeld een organisatie of een verantwoordelijkheid binnen een organisatie) worden gegroepeerd met behulp van een Trace. Wanneer een Dataverwerkingen een andere Dataverwerking tot gevolg heeft worden de logregels van beide Dataverwerkingen aan elkaar gelinkt. Statische informatie over Dataverwerkingen kan worden opgezocht in Registers op basis van een verwijzing die in elke logregel wordt opgenomen.


## Extensies

De standaard Logboek Dataverwerkingen specificeert de basis voor het loggen en aan elkaar relateren van dataverwerkingen.
Het standaardiseren van aanvullende functionaliteit wordt gedaan met behulp van `extensies`:
Het standaardiseren van aanvullende functionaliteit wordt gedaan met behulp van `extensies`:

*-- NB. De scope van onderstaande extensies is nog onderwerp van gesprek. --*

- *Extensie Betrokkenen*<br>
  Met deze extensie wordt meer precies uitgewerkt hoe de identiteit van een <a>Betrokkene</a> wordt gerelateerd aan een verwerking, zodat actief informeren of het faciliteren van inzageverzoeken gestandaardiseerd mogelijk wordt. Dit is een nadere uitwerking van wat in de meest basale variant al mogelijk is rond vastlegging van de Betrokkene.

- *Extensie Verwerkte Data*<br>
  Deze extensie specificeert een uniforme manier om verwerkte data in logregels op te nemen

- *Extensie Inzage*<br>
  Deze extensie heeft een afhankelijkheid van de extensies *Betrokkenen* en *Verwerkte Data*, en biedt een interface op
  de logs vanuit het perspectief van de betrokkene.

- *Extensie Manipulatiebestendigheid*<br>
  Deze extensie beschrijft hoe logs zodanig kunnen worden ingericht dat manipulatie van de logregords kan worden aangetoond,
  en hierover zinnige uitspraken kunnen worden gedaan wanneer de logs van meerdere organisaties aan elkaar worden gerelateerd.


## Profielen

In een **profiel** worden aanvullende beperkingen en verplichtingen vastgelegd over het gebruik van de standaard. Op deze
manier kan een groep organisaties interoperabiliteit organiseren. Voorbeelden van aanvullende afspraken in een profiel zijn:

- De combinatie van extensies die gebruikt wordt
- Afspraken over specifieke aanvullende eisen (bijvoorbeeld over TLS configuratie)
- Afspraken over data-retentie
- De wijze waarop pseudonimisering van persoonsgegevens plaatsvindt


## Use case

Typische use case voor het gebruik van de standaard is een samenwerking tussen meerdere organisaties die interoperabiliteit willen bereiken bij het loggen van dataverwerkingen, om zo op eenduidige manier te kunnen verantwoorden over de dataverwerking.
