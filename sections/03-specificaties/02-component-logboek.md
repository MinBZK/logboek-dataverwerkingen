# Component: Logboek

Voor ieder Logboek waarin dataverwerkingen worden gelogd gelden de volgende specificaties voor gedrag en interface.


## Gedrag

Het Logboek ***MOET*** TLS afdwingen op connecties volgens de binnen de organisatie gangbare standaard.

Het Logboek ***MOET*** het wegschrijven van elke logregel bevestigen.


## Interface

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
- `dpl.core.data_subject_id`: ID van de Betrokkene; versleuteld. Dit is bijvoorbeeld een `BSN` of `Vreemdelingennummer` waarmee wordt aangeduid welke persoon Betrokkene is bij de verwerking, gelet op de AVG.
