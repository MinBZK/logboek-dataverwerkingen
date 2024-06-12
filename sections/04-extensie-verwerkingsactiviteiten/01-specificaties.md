# Specs Extensie Verwerkingsactiviteiten

Deze extensie standaardiseert deels de Registers waarin Verwerkingsactiviteiten worden gespecificeerd, zoals o.a. het Register van Verwerkingsactiviteiten dat wordt beschreven in AVG art. 30.


## Component: Register

Voor ieder register met statische gegevens over dataverwerkingen die gelogd moeten worden gelden de volgende specificaties voor het gedrag en de interface.


### Gedrag

Het Register **MOET** iedere significante wijziging van een Verwerkingsactiviteit opslaan met een nieuwe identifier, zodat de `dpl.core.processing_activity_id` naar een eenduidige versie van de verwerkingsactiviteit verwijst.

### Interface

Nog uitwerken, REST API, Read-only OpenAPI 3 specificatie.