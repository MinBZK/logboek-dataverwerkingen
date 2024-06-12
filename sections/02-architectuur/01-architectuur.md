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

De standaard beschrijft de interfaces (in het diagram aangeduid met groene lijnen), en het gedrag van de componenten voor zover relvant om technisch interoperabel te worden.

De relatie tussen Logboek en Register heeft geen technische interface, wel moet een relatie gelegd kunnen worden tussen de logregels in het Logboek en de Verwerkingsactiviteiten in het Register.


## Applicatie

Een Applicatie is een software component of groep van software componenten waarmee een Dataverwerking wordt uitgevoerd. Een Applicatie kan in allerlei vormen voorkomen. Voor de architectuur is niet relevant welke vorm de Applicatie heeft, het is slechts relevant dat dit de component is waar een Dataverwerking wordt uitgevoerd.

In een Applicatie is de context van de Dataverwerking bekend, zoals welke Verwerkingsactiviteit wordt uitgevoerd met de Dataverwerking. Het is dan ook de Applicatie die het loggen van de Dataverwerking initiëert.


## Logboek

Een Logboek is een softwarecomponent


## Register

Een Register bevat informatie over mogelijke dataverwerkingen die voorkomen bij een Verantwoordelijke. Het Register is relatief statisch, het bevat informatie over welke Verwerkingsactiviteiten voorkomen binnen een organisatie. Elke Verwerkingsactiveit heeft een unieke code waarmee de Verwerkingsactiviteit kan worden aangeduid. Deze code wordt gebruikt om logregels te relateren aan een Verwerkingsactiviteit.

Het Register kan een software component zijn. Conceptueel kan het ook een Register in de vorm van een papieren document zijn.


## Grenzen

