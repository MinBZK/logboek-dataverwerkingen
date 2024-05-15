# Architectuur

Op hoog abstractieniveau zijn voor het begrijpen van deze standaard de volgende componenten te onderscheiden:

- Applicatie
- Logboek
- Register

Een Dataverwerking kan plaatsvinden over de grenzen van een verantwoordelijkheid. In dat geval roept een Applicatie van Verantwoordelijke A de Applicatie van Verantwoordelijke B aan. Denk bijvoorbeeld aan het bevragen of muteren van gegevens via een API.

Een Verantwoordelijke is bijvoorbeeld een organisatie, maar kan ook bestaan uit meerdere organisaties die allemaal onder dezelfde Verantwoordelijke werk uitvoeren. Denk daarbij aan Verwerkers in het kader van de AVG.

Iedere Verantwoordelijke kan een veelheid aan Applicaties gebruiken.

Applicaties schrijven logs over Dataverwerkingen weg in een Logboek.
Logregels in het Logboek verwijzen naar nadere informatie in een Register.
Iedere Verantwoordelijke houdt alleen logs bij over eigen Dataverwerkingen.
Op basis van metadata die tussen Applicaties wordt uitgewisseld is het mogelijk om bij elkaar behorende logregels in meerdere Logboeken aan elkaar te relateren.

![architecture](diagrams/general-architecture.svg "Componenten in context")


## Applicatie

Een Applicatie kan in de praktijk vele vormen hebben, dit is voor de werking van de standaard niet relevant.

*-- Voorbeelden opsommen --*


## Logboek


## Register

Een Register bevat informatie over mogelijke dataverwerkingen die voorkomen bij een Verantwoordelijke.
