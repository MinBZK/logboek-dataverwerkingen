# Algemene werking van de standaard

Applicaties loggen Dataverwerkingen in een Logboek component. Elke Dataverwerking wordt apart gelogd. Dataverwerkingen binnen dezelfde context (bijvorbeeld een organisatie of binnen een verantwoordelijkheid) worden gegroepeerd met behulp van een Trace. Dataverwerkingen waarbij verschillende contexten zijn betrokken worden aan elkaar gelinkt door informatie over de Trace en Dataverwerking als metadata mee te geven met de Transactie. Statische informatie over Dataverwerkingen kan worden opgezocht in Registers op basis van een verwijzing die in elke logregel wordt opgenomen.


## Extensies

De standaard Logboek Dataverwerkingen specificeert de basis voor het loggen en aan elkaar relateren van dataverwerkingen.
Het standaardiseren van aanvullende functionaliteit wordt gedaan met behulp van `extensies`.

Het is **AANBEVOLEN** om de standaard Logboek Dataverwerkingen te gebruiken met de volgende extensies:

- *Extensie Register van Verwerkingsactiviteiten*<br>
  Deze extensie breidt de standaard uit met een interfacebeschrijving voor Registers met statische informatie over verwerkingsactiviteiten die voorkomen in een organisatie. Dit is bijv. een interface op een *Register van Verwerkingsactiviteiten*
  zoals bedoeld in AVG artikel 30.
  - [ ] Discussie: Kan ook als losse standaard, wat is beter?

*-- NB. De scope van onderstaande extensies is nog onderwerp van gesprek. --*

- *Extensie Betrokkenen*<br>
  Met deze extensie wordt meer precies uitgewerkt hoe de identiteit van een betrokkene wordt gerelateerd aan een verwerking, zodat actief informeren of het faciliteren van inzageverzoeken gestandaardiseerd mogelijk wordt.

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
- Afspraken over data-retentie


## Use case

Typische use case voor het gebruik van de standaard is een samenwerking van meerdere organisaties die interoperabiliteit
willen bereiken bij het loggen van dataverwerkingen, om zo op eenduidige manier te kunnen verantwoorden over de dataverwerking.
