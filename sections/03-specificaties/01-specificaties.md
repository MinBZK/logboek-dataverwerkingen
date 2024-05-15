


## Protocollen

De protocollen die worden gebruikt tussen applicatie en logboek en voor het uitvoeren van transacties tussen applicaties worden niet voorgeschreven in de standaard. Dit biedt de vrijheid om de standaard toe te voegen aan vrijwel iedere softwareoplossing.

Het is ***AANBEVOLEN*** om het OpenTelemetry Protocol (OTLP) te gebruiken.

Als gebruik wordt gemaakt van HTTP/1.1 of HTTP/2 voor het uitvoeren van dataverwerkingen in meerdere applicaties ***MOET*** gebruik worden gemaakt van de Trace Context specificatie voor het uitwisselen van context informatie.


## Logboek

Voor ieder Logboek waarin dataverwerkingen worden gelogd gelden de volgende specificaties voor gedrag en interface.

### Gedrag

### Interface

#### Velden

* `activity_name`: Naam van de verwerking
* `timestamp`: Tijdsip van de registratie
* `trace_id`: Uniek ID van de registratie
* `span_id`: Uniek ID van actie/handeling binnen
* `status`: Status van de registratie, onbekend, success, fout
* `kind`: Type systeem dat de verwerking heeft uitgevoerd. Een client, server, intern process (batch )
* `attributes`: Lijst van KeyValue waarden.

#### Attributen

Attibuten definieren we in een schema. Schema heeft een versie. Door attributen vast te leggen in een schema kunnen attibuten over tijd
Attributen defineren in een namespace/prefix: `dpl.`. Extenties krijgen ook een eigen namespace binnen deze namespace. Zo kunnen extenties naast elkaar gebruikt worden.

Wanneer een attribuut verplicht moet zijn maar het niet altijd lukt om op te geven, dan niet leeg laten maar dan een specifieke waarde gebruiken wat hiervoor is bedoelt. Zo is duidelijk dat het met opzet leeg is gelaten er niet ergens is misgegeaan. Of wanneer een attribuut later is gedefinieerd, er onderscheid gemaakt kan worden tussen voor dat moment en na het moment van definieren.

* `dpl.core.user`: Gebruiker die verwerking heeft geïnitieerd; URI
* `dpl.core.delete_after`: Na dit tijdsip moet deze verwerking verwijderd zijn

## Applicatie

Voor iedere applicatie waarin dataverwerkingen plaatsvinden die gelogd moeten worden gelden de volgende specificaties voor het gedrag.


### Gedrag

* Een verwerking moet traceerbaar zijn. Dat betekent dat het verklaarbaar moet zijn wat voor de verwerking heeft gezorgd. Zowel binnen een organisatie als over organisaies heen. Een verstrekker (door middel van bijvoorbeeld een HTTP API) van gegevens ..(?)
* Tijdtip van de verwerking gezien door het systeem wat de verwerking uitvoert
* Soort bron: (HTTP) client, server, intern process
* Bron: naam en versie van het softwarecomponent dat de verwerking uitvoert. En eventuele extra relevante informatie over de bron.
* Status van de verwerking. Is de verwerking uitgevoerd of niet.
* Lijst van attributen welke relevant zijn voor de verwerking. Welke attributen dat zijn, kunnen in extenties opgenomen worden. Inclususief het datatype en hoet het geinterperteerd dient te worden.

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

