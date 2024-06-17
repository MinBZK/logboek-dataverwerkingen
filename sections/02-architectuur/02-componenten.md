# Componenten


## Applicatie

Een Applicatie is een software component of groep van software componenten waarmee een Dataverwerking wordt uitgevoerd. Een Applicatie kan in allerlei vormen voorkomen. Voor de architectuur is niet relevant welke vorm de Applicatie heeft, het is slechts relevant dat dit de component is waar een Dataverwerking wordt uitgevoerd.

In een Applicatie is de context van de Dataverwerking bekend, zoals welke Verwerkingsactiviteit wordt uitgevoerd met de Dataverwerking. Het is dan ook de Applicatie die het loggen van de Dataverwerking initiëert.


## Logboek

Een Logboek is een Applicatie met een specifieke rol in de context van deze standaard. In het Logboek worden Dataverwerkingen gelogd.

Dataverwerkingen in het Register worden *niet* gelogd in een Logboek Dataverwerkingen, dit zou een oneindige recursiviteit veroorzaken.


## Register

 Een Register bevat informatie over mogelijke dataverwerkingen die voorkomen bij een Verantwoordelijke. Het Register is relatief statisch, het bevat informatie over welke Verwerkingsactiviteiten voorkomen binnen een organisatie. Elke Verwerkingsactiveit heeft een unieke code waarmee de Verwerkingsactiviteit kan worden aangeduid. Deze code wordt gebruikt om logregels te relateren aan een Verwerkingsactiviteit.

Het Register kan een Applicatie zijn, in dat geval is het een Applicatie met een specifieke rol in de context van deze standaard. Conceptueel kan het ook een Register in de vorm van een papieren document zijn.

Dataverwerkingen in het Register worden gelogd in een Logboek Dataverwerkingen. Bijvoorbeeld: het toevoegen van een Verwerkingsactiviteit of een Verantwoordelijke.
