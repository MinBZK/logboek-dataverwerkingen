


## Protocollen

De protocollen die worden gebruikt tussen applicatie en logboek en voor het uitvoeren van transacties tussen applicaties worden niet voorgeschreven in de standaard. Dit biedt de vrijheid om de standaard toe te voegen aan vrijwel iedere softwareoplossing.

Het is ***AANBEVOLEN*** om het OpenTelemetry Protocol (OTLP) te gebruiken in de interactie tussen Applicatie en Logboek.

Als gebruik wordt gemaakt van HTTP/1.1 of HTTP/2 voor het uitvoeren van dataverwerkingen in meerdere applicaties ***MOET*** gebruik worden gemaakt van de Trace Context specificatie voor het uitwisselen van context informatie.

*-- Generieker beschrijven: wat als geen HTTP wordt gebruikt? Dan Trace Context op andere manier implementeren --*


## Logboek

Voor ieder Logboek waarin dataverwerkingen worden gelogd gelden de volgende specificaties voor gedrag en interface.

### Gedrag

*-- Uit te werken --*

### Interface

De interface ***MOET*** de volgende velden implementeren:

* `trace_id`: 16 bytes, Uniek ID van groep bij elkaar behorende Dataverwerkingen, genaamd een *trace*
* `processing_id`: 8 bytes, Uniek ID van de Dataverwerking
* `processing_operation_name`: string, Naam van de specifieke operatie binnen de Dataverwerking
* `parent_processing_id`: 8 bytes, optioneel, ID van een Dataverwerking binnen de huidige Verwerkingsactiviteit die de huidige Dataverwerking gestart heeft
* `start_time`: timestamp in milliseconden, Tijdstip waarop de Dataverwerking gestart is
* `end_time`: timestamp in milliseconden, Tijdstip waarop de Dataverwerking beëindigd is
* `status_code`: Status van de Dataverwerking
* `foreign`: Bericht, optioneel. Bestaat uit drie velden:
    * `trace_id`: trace_id uit de aanroepende organisatie
    * `processing_id`: processing_id uit de aanroepende organisatie
    * `entity`: URI verwijzend naar externe entiteit
* `attributes`: Lijst attributen in de vorm van *KeyValue pairs*.

Het veld *status_code* is een enumeratie die de volgende waarden kan bevatten:
*-- nog correct uitwerken --*
* 0: STATUS_CODE_UNSPECIFIED: 
* 1: STATUS_CODE_OK:
* 2: STATUS_CODE_ERROR:

*-- nog toevoegen --*
* Systeem

#### Attributen

Attributen bestaan in een namespace met prefix: `dpl.` (afkorting voor *data processing log*).

De volgende attributen zijn mogelijk:

* `dpl.core.processing_activity_id`: URI; Verwijzing naar register met meer informatie over de verwerkingsactiviteit


*- ter discussie, afhankelijk van juridische afwegingen -* 
* `dpl.core.user`: Gebruiker 
* `dpl.core.delete_after`: Na dit tijdstip moet deze verwerking verwijderd zijn



## Applicatie

Voor iedere applicatie waarin dataverwerkingen plaatsvinden die gelogd moeten worden gelden de volgende specificaties voor het gedrag.


### Gedrag

De applicatie ***MOET*** voor iedere Dataverwerking een logregel wegschrijven in een Logboek.

De applicatie ***MOET*** een Trace starten voor iedere Dataverwerking waarvan nog geen Trace bekend is.

De applicatie

Als een applicatie aangeroepen kan worden vanuit een andere applicatie ***MOET*** de applicatie Trace Context metadata accepteren bij een dergelijke aanroepen deze metadata kunnen omzetten naar een `foreign` bericht.

De applicatie ***MOET*** bijhouden of een Dataverwerking geslaagd of mislukt is en deze per Dataverwerking als status meegeven aan het Logboek.


### Randvoorwaarden

* Registratie van verwerkingen moeten een ack krijgen
* Transport encryptie (TLS)
* Elke verwerking die plaats vind moet geregistreerd worden. Het is niet de bedoeling om te sample'en.
* Verwerkingregistratie moet snel verwerkt kunnen worden. Moet niet vertragen.

Noot: hier kunnen we het eea van overnemen/op baseren: https://github.com/open-telemetry/opentelemetry-proto/blob/main/docs/requirements.md#opentelemetry-protocol-requirements
* Throughput
* Backwards Compatibility


### Interface




## Register

Voor ieder register met statische gegevens over dataverwerkingen die gelogd moeten worden gelden de volgende specificaties voor het gedrag en de interface

### Gedrag

### Interface

