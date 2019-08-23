# Stroomdata

Bij stroomdata heb je in plaats van een cijfer voor één gebied een cijfer over de relatie tussen een gebied en een ander gebied.
Bijvoorbeeld hoevel mensen fietsen van gemeente A naar gemeente B.

Het gebruik van deze gegevens is iets complexer in Swing, en het is gemakkelijk om zo veel data te vragen dat het echt niet meer werkt.
Maar het kan bijzonder nuttig zijn, bijvoorbeeld om op kaart te laten zien waar gebruikers van diensten in een bepaalde plaats vandaan komen. 
Zie bijvoorbeeld de rapporten Detailhandel en Onderwijs.

In Swing worden deze behandeld zoals kubussen. Je kan ze dus cachen, en ze kunnen behoorlijk traag worden indien er veel gebieden zijn.
Je kan niet tellen met stroomdata, je kan dus geen totaal bouwen op een subtotaal, en je moet bepaalde types percentages inlezen.

Voor het inlezen moet je lichtjes anders te werk gaan. Dit wordt uigelegd op de Help op Admin/Studio/Import. Belangrijk en niet intuïtief is dat je periode-veld (normaal PERIOD of JAAR) nu STROOM moet heten.
Je werkt ook niet met een kolom met het geolevel, maar gebruikt in de plaats daarvan de code van het gebiedsniveau als kolomhoofd voor je "van" gebieden. De "naar" gebieden moeten van hetzelfde niveau zijn en krijgen "IDEM" als kolomhoofd.
Je kan dus geen data inlezen "van" gemeente "naar" provincie. Een eindgebruiker kan dit wel: "hoeveel leerlingen 'van' een gemeente gaan 'naar' scholen in een bepaalde provincie".
