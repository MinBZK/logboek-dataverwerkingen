# Introductie

## Doel

-volgt- 

## Basisterminologie

**Inzage**
**Logboek**
**Span**
**Transactie**
**Verwerking**
**Verwerkingsactiviteit**


## Algemene werking

### Extensies

De standaard Logboek Dataverwerkingen specificeert de basis voor het loggen en aan elkaar relateren van dataverwerkingen. Het standaardiseren van aanvullende functionaliteit wordt gedaan met behulp van `extensies`.

Het is **AANBEVOLEN** om de standaard Logboek Dataverwerkingen te gebruiken met de volgende extensies:
- **Extensie Verwerkingsactiviteiten**
  Deze extensie breidt de standaard uit met specificaties voor het loggen van Verwerkingsactiviteiten en een interface naar de definitie van deze Verwerkingsactiviteiten. Dit is bijv. een interface op een *Register van Verwerkingsactiviteiten* zoals bedoeld in AVG artikel 30.

Daarnaast worden de volgende extensies verwacht:

NB. De scope van onderstaande extensies is nog onderwerp van gesprek.

- **Extensie Betrokkenen**
  Met deze extensie worden (ketens van) logs gekoppeld aan de identiteit van een betrokkene, zodat actief informeren of het faciliteren van inzageverzoeken gestandaardiseerd mogelijk wordt.

- **Extensie Verwerkte Data**
  Deze extensie specificeert een uniforme manier om verwerkte data in logregels op te nemen, 

- **Extensie Inzage**
  Deze extensie heeft een afhankelijkheid van de extensies *Betrokkenen* en *Verwerkte Data*, en biedt een interface op de logs vanuit het perspectief van de betrokkene.

- **Extensie Manipulatiebestendigheid**
  Deze extensie beschrijft hoe logs zodanig kunnen worden ingericht dat manipulatie van de logregords kan worden aangetoond, en hierover zinnige uitspraken kunnen worden gedaan wanneer de logs van meerdere organisaties aan elkaar worden gerelateerd.


### Profielen

In een **profiel** worden aanvullende beperkingen en verplichtingen vastgelegd over het gebruik van de standaard. Op deze manier kan een groep organisaties interoperabiliteit organiseren. Voorbeelden van aanvullende afspraken in een profiel zijn:
- De combinatie van extensies die gebruikt wordt
- Afspraken over data-retentie


### Use case

Typische use case voor het gebruik van de standaard is een samenwerking van meerdere organisaties die interoperabiliteit willen bereiken bij het loggen van dataverwerkingen.

