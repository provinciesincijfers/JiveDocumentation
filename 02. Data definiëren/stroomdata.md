# Stroomdata

Bij stroomdata heb je in plaats van een cijfer voor één gebied **een cijfer over de relatie tussen een gebied en een ander gebied**.
Bijvoorbeeld hoeveel mensen fietsen van gemeente A naar gemeente B.

Het gebruik van deze gegevens is iets complexer in Swing, en het is gemakkelijk om zo veel data te vragen dat het echt niet meer werkt.
Maar het kan bijzonder nuttig zijn, bijvoorbeeld om op kaart te laten zien waar gebruikers van diensten in een bepaalde plaats vandaan komen. 

**In Swing worden deze behandeld zoals kubussen**. Je kan ze dus cachen, en ze kunnen behoorlijk traag worden indien er veel gebieden zijn.
Je kan **geen formules maken** met stroomdata, je kan dus geen totaal bouwen op een subtotaal, en **je moet bepaalde types percentages inlezen**.

Voor het **inlezen** moet je lichtjes anders te werk gaan. Dit wordt uigelegd op de Help op [Admin/Studio/Import](https://provincies.incijfers.be/Admin/Studio/Import). Belangrijk en niet intuïtief is dat je **periode-veld (PERIOD) nu STREAM moet heten**.

**De 'van-gebieden' krijgen als kolomhoofd from_level.** We werken dus **niet met een kolom met het geolevel**. De **"naar" gebieden moeten van hetzelfde niveau zijn en krijgen "IDEM" als kolomhoofd.**

Je kan dus geen data inlezen "van" gemeente "naar" provincie. Een eindgebruiker kan dit wel: "hoeveel leerlingen 'van' een gemeente gaan 'naar' scholen in een bepaalde provincie".

In [provincies.incijfers.be](https://provincies.incijfers.be) beginnen we **onderwerpen met stroomdata steeds met vs????, waarbij ???? staat voor de viercijferige themacode**.
