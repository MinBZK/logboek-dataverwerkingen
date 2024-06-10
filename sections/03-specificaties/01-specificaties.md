# Protocollen

De protocollen die worden gebruikt tussen applicatie en logboek en voor het uitvoeren van transacties tussen applicaties worden niet voorgeschreven in de standaard. Dit biedt de vrijheid om de standaard toe te voegen aan vrijwel iedere softwareoplossing.

Het is ***AANBEVOLEN*** om het OpenTelemetry Protocol (OTLP) te gebruiken in de interactie tussen Applicatie en Logboek.

Als gebruik wordt gemaakt van  HTTP/1.1 [[RFC9112]] of HTTP/2 [[RFC9113]] voor het uitvoeren van dataverwerkingen in meerdere applicaties ***MOET*** gebruik worden gemaakt van de Trace Context specificatie voor het uitwisselen van context informatie.


## Component: Logboek

Voor ieder Logboek waarin dataverwerkingen worden gelogd gelden de volgende specificaties voor gedrag en interface.


### Gedrag

Het Logboek ***MOET*** TLS afdwingen op connecties volgens de binnen de organisatie gangbare standaard.

Het Logboek ***MOET*** het wegschrijven van elke logregel bevestigen.


### Interface

De interface ***MOET*** de volgende velden implementeren:

| Veld                  | Type           | optioneel | Omschrijving |
|-----------------------|----------------|---------------|--------------|
| `trace_id`            | 16 byte        | verplicht     | Uniek ID van *Trace*, een groep bij elkaar behorende Dataverwerkingen |
| `operation_id`        |  8 byte        | verplicht     | Uniek ID van de Dataverwerking |
| `status_code`         | enum           | verplicht     | Status van de Dataverwerking |
| `name`                | string         | verplicht     | Naam van de specifieke operatie binnen de Dataverwerking |
| `start_time`          | timestamp (ms) | verplicht     | Tijdstip waarop de Dataverwerking gestart is |
| `end_time`            | timestamp (ms) | verplicht     | Tijdstip waarop de Dataverwerking beëindigd is |
| `parent_operation_id` |  8 byte        | optioneel     | ID van aanroepende Dataverwerking *binnen de huidige Verwerkingsactiviteit* |
| `foreign_operation`   | message        | optioneel     |              |
| `resource`            | message        | optioneel     |              |
| `attributes`          | list           | verplicht     | Verplichte key-value pairs |

Het veld `status_code` is een enumeratie die de volgende waarden kan bevatten:
- 0: STATUS_CODE_UNKNOWN:
- 1: STATUS_CODE_OK:
- 2: STATUS_CODE_ERROR:

Het veld `foreign_operation` is een `message`, opgebouwd uit de volgende velden:
| Veld                  | Type           | optioneel | Omschrijving |
|-----------------------|----------------|---------------|--------------|
| `trace_id`            | 16 byte        | verplicht     | Uniek ID van *Trace* bij externe partij |
| `operation_id`        |  8 byte        | verplicht     | Uniek ID van de Dataverwerking bij externe partij |
| `entity`              |  URI           | verplicht     | URI verwijzend naar externe partij |

Het veld `resource` is een bericht, opgebouwd uit het volgende veld:
  - `attributes`: Lijst attributen in de vorm van *KeyValue pairs*. De organisatie kan deze lijst gebruiken om een systeem, applicatie of component aan te duiden op een manier die binnen de organisatie gebruikelijk is. Dit zijn bijvoorbeeld naam en versienummer van een applicatie, of een verwijzing naar een record in een CMDB.

Het veld `attributes` is een lijst van *key-value pairs*, in een namespace met prefix `dpl.` (data processing log). De volgende attributen zijn mogelijk in de namespace `core`:

- `dpl.core.processing_activity_id`: URI; Verwijzing naar register met meer informatie over de verwerkingsactiviteit
- `dpl.core.data_subject_id`: ID van de betrokkene; versleuteld. Dit is bijvoorbeeld een `BSN` of `Vreemdelingennummer` waarmee wordt aangeduid welke persoon betrokkene is bij de verwerking, gelet op de AVG.



## Component: Applicatie

Voor iedere applicatie waarin dataverwerkingen plaatsvinden die gelogd moeten worden gelden de volgende specificaties voor het gedrag.


### Gedrag

De applicatie ***MOET*** een Trace starten voor iedere Dataverwerking waarvan nog geen Trace bekend is.

De applicatie ***MOET*** voor iedere Dataverwerking een logregel wegschrijven in een Logboek. *Log Sampling* is niet toegestaan. 
Als een applicatie aangeroepen kan worden vanuit een andere applicatie ***MOET*** de applicatie Trace Context metadata accepteren bij een dergelijke aanroepen deze metadata kunnen omzetten naar een `foreign` bericht.

De applicatie ***MOET*** bijhouden of een Dataverwerking geslaagd of mislukt is en dit per Dataverwerking als status meegeven aan het Logboek.

Als een Dataverwerking meerdere Betrokkenen heeft dan ***MOET*** de applicatie voor iedere betrokkene een aparte logregel wegschrijven. Een logregel kan naar 0 of 1 betrokkenen verwijzen.

Als een applicatie aangeroepen kan worden vanuit een andere applicatie ***MOET*** de applicatie Trace Context metadata accepteren bij een dergelijke aanroepen deze metadata kunnen omzetten naar een `foreign_operation` bericht.


### Interface

De Applicatie heeft geen voor deze standaard relevante interface.




