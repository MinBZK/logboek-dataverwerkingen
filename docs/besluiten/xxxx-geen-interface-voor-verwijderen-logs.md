# Standaard beschrijft geen interface voor verwijderen van logs

- Status: draft
- Datum: 2024-05-24


## Context en probleemstelling

Logrecords moeten op enig moment worden vernietigd. Moet er een interface in de standaard worden gedefinieerd voor het verwijderen van vastgelegde logrecords?

De wijze waarop logrecords worden weggeschreven is sterk afhankelijk van de keuzes die een organisatie maakt bij de implementatie van de standaard.

Interoperabiliteit is daarbij niet relevant, omdat het wijzigen of verwijderen van logrecords niet gebeurt vanuit de applicatie die oorspronkelijk de dataverwerking uitvoerde en het wegschrijven van het logrecord veroorzaakte. Wijzigen en verwijderen gebeurt vanuit een beheercomponent. Deze zijn vaak hard gekoppeld aan de voor logging gekozen oplossing, waardoor het voorschrijven van een interface tot onnodige complexiteit leidt.



## Besluit

- De standaard beschrijft geen interface voor het wijzigen of verwijderen van logrecords


## Gevolgen

- Iedere organisatie kan een bij de eigen implementatie passende oplossing kiezen voor het verwijderen van logrecords
- Het wijzigen van logrecords is in principe ongewenst maar kan op soortgelijke manier opgelost worden


<!-- Optioneel -->
## Meer informatie

{ Eventuele verwijzingen naar andere bronnen of websites }

- [Website](https://example.com)
- [Ander document](https://example.com)
- ...
