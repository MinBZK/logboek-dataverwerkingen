# Componenten


## Applicatie

Een Applicatie is een software component of groep van software componenten waarmee een Dataverwerking wordt uitgevoerd. Een Applicatie kan in allerlei vormen voorkomen. Voor de architectuur is niet relevant welke vorm de Applicatie heeft, het is slechts relevant dat dit de component is waar een Dataverwerking wordt uitgevoerd.

In een Applicatie is de context van de Dataverwerking bekend, zoals welke Verwerkingsactiviteit wordt uitgevoerd met de Dataverwerking. Het is dan ook de Applicatie die het loggen van de Dataverwerking initiëert.


## Logboek

Een Logboek is een Applicatie met een specifieke rol in de context van deze standaard. In het Logboek worden Dataverwerkingen gelogd.

Dataverwerkingen in het Logboek zelf worden *niet* gelogd in een Logboek Dataverwerkingen, dit zou een oneindige recursiviteit veroorzaken.


## Register

Een Register bevat statische informatie over Verwerkingsactiviteiten die voorkomen bij een Verantwoordelijke. Elke Verwerkingsactiveit heeft een unieke code waarmee de Verwerkingsactiviteit kan worden aangeduid. Deze code wordt gebruikt om logregels te relateren aan een Verwerkingsactiviteit.

Het Register kan een Applicatie zijn, in dat geval is het een Applicatie met een specifieke rol in de context van deze standaard. Eventueel kan het ook een Register in de vorm van een document zijn.

Dataverwerkingen in het Register worden gelogd in een Logboek Dataverwerkingen. Bijvoorbeeld: het toevoegen van een Verwerkingsactiviteit of een Verantwoordelijke.

Voor alle Dataverwerkingen waarbij persoonsgegevens worden verwerkt is wettelijk geregeld dat de Verwerkingsactiviteiten moeten worden beschreven in het zogenaamde Register van Verwerkingsactiviteiten (AVG art. 30). Vanwege deze wettelijke plicht zal dit Register in veel organisaties beschikbaar zijn.
