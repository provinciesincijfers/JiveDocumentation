
# Beheer toegang: toegangsgroepen

❕ **De toegang staat los van dataveiligheid**. Als je bijvoorbeeld een deel-link maakt met onderwerpen in de TESTMAP, dan kan een gast toch de cijfers zien! We kunnen dit doen, omdat kleine aantallen gecensureerd worden en we geen gevoelige data in PinC zetten.

Bekijk zeker ook [dit](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/05.%20Themaboom%20-%20Toegang%20beheren/De%20themaboom.md) document over de themaboom.

## Toegangsgroepen &amp; inloggen

**Iedereen die de Databank (Swing Viewer) gebruikt zit per definitie in een Toegangsgroep/Accessgroup**. Ook mensen die gewoon je website bezoeken en verder niets doen. In **Versie > Instellingen** wordt bepaald welke Gebruiker gebruikt wordt om de rechten van buitenstaanders toe te kennen. Je kunt ervoor kiezen om heel ver te gaan in de organisatie van gebruikers in gebruikersgroepen en toegangsgroepen, of je kan hier niet of nauwelijks in differentiëren.

**Alle gebruikers, behalve de &quot;gastgebruiker&quot; moeten inloggen**. Die inlog kan je zowel in de gepubliceerde omgeving als in de nog-niet-gepubliceerde omgeving gebruiken (zie verder). Alle gebruikers kunnen in beide omgevingen inloggen. Swing beheerders kunnen hun login in beide omgevingen gebruiken, maar ook nog eens in de Studio. Zij hebben als Gebruikerstype (via de tabel Gebruikersgroepen) het type Beheerder meegekregen. **Elke account waarmee je in Studio kunt inloggen, kan je dus ook in je live website (de productieomgeving) gebruiken**. In theorie zou je een Beheerder echter op basis van Toegangsgroepen de toegang tot de data zelf kunnen ontzeggen.

**Alle data waar je rechten op hebt, is raadpleegbaar. De Themaboom dient enkel om dit** ***gemakkelijk*** **te maken voor mensen**. Maar als je bijvoorbeeld de onderwerpcode kent, dan kan je ze sowieso raadplegen door `?var=onderwerpcode` toe te voegen aan de URL van je website.

## Themaboom en Toegangsgroepen

De zichtbaarheid van de mappen wordt georganiseerd via de themaboom. Om dit mogelijk te maken hebben we **deze**  **AccessGroups**.

- **extern**: bevat ALLE onderwerpen, maar niet alle gebiedsniveaus. Statsec ontbreekt, en enkele gebiedsindelingen die niet voor iedereen relevant zijn. Ze bevat ook een subset van DimensieNiveaus die voor iedereen beschikbaar mogen zijn
- **extern\_statsec**: bevat een subset van onderwerpen die expliciet toegankelijk zijn gemaakt op niveau statsec
- **extern\_gembelg* : deze groep moet je niet aankomen. Ze bestaat enkel om het mogelijk te maken in rapporten stroomdata voor heel België te tonen (dit mogen we niet gewoon in de Databank)
- **system**: dit moet STEEDS op &quot;alles tonen&quot; voor alles blijven staan. Anders kan je zelfs als admin niet meer alles zien!
- **intern**: bevat op dit moment ook gewoon alles

We gebruiken de Access Groups om **enkele zaken voor niet-ingelogde eindgebruikers af te schermen**. Met name:

- Data is NIET automatisch op **statsec niveau** beschikbaar
- **Nieuwe dimensieniveaus van kubussen** zijn NIET automatisch beschikbaar

Dus:

_Wil je nieuwe data op niveau_ _statsec publiceren, dan moeten de onderwerpen toegevoegd worden aan de lijst Indicators van de rij extern\_statsec in de tabel AccessGroups._

_Wil je nieuwe dimensieniveaus publiceren, dan moet het dimensieniveau_ _toegevoegd worden aan de lijst DimLevels van de rij extern in de tabel AccessGroups_

## Implicaties

- Je kan heel ver gaan in wie je naar welke Thema&#39;s doorstuurt en wat laat zien onder welke voorwaarden.
- Je kan zonder intensief gebruik van toegangsgroepen toch data intern houden door &quot;gasten&quot; toe te wijzen aan een beperkte themaboom, en &quot;internen&quot; aan een andere themaboom.
- Je kan de twee combineren, en de rechten op de &quot;externe&quot; themaboom uitbreiden voor speciale bezoeker. Voorbeeld: &quot;gast&quot; ziet de data voor alle jaren, behalve het meest recente; &quot;internen&quot; zien óók het laatste jaar.
- Je kan een &quot;externe&quot; perfect toegang geven tot je &quot;testomgeving&quot;, zonder dat je risico loopt dat die &quot;te veel ziet&quot;. Maar de testomgeving is niet stabiel!
- Je kan een &quot;externe&quot; perfect data laten zien die hij niet ziet in de Themaboom, door een link te delen van een presentatie. Op voorwaarde dat de data zelf niet afgeschermd is.


# Gebruikersaccounts

## Wie krijgt een account, en wat krijgt die te zien?

**Iedereen heeft een gebruikersaccount**: zelfs gasten zijn &#39;ingelogd&#39; als user &quot;extern&quot;. Deze Users zijn geassocieerd met een **UserGroup/Gebruikersgroep**.
Gebruikers zitten in een bepaalde gebruikersgroep/usergroup en die user groups hebben recht op bepaalde accesgroups/toegangsgroepen.

Belangrijke UserGroups:

- **Swing Beheerders** hebben recht op **alle mappen**, ook de TESTMAP en doorgaans ook tot **Studio**.
  - Gebruikersgroep = **system**.
- **Speciale gebruikers** (personeel provincie, centrumsteden of andere specifieke klanten met een account) kunnen inloggen op provincies.incijfers.be/databank en zien de map **PRODUCTIE,** waar zowel het **INTERNE en EXTERNE** deel te zien is.
  - Gebruikersgroep = **users.**
  - Ze hebben recht op zowel INTERN als drie EXTERNE AccessGroups.
- **Gasten** hebben enkel toegang tot de map **EXTERN.**
  - Gebruikersgroep = **extern.**
  - In de tabel AccessGroups wordt bepaald dat ze landen op het thema EXTERN. Ze krijgen toegang tot de drie EXTERNE AccessGroups. 

Daarnaast kan er **maatwerk** gebeuren om mensen &quot;op te sluiten&quot; in een bepaald thema.




## Regels per gebruikersgroep

### System

Deze accounts **worden enkel gebruikt door de Swingbeheerders van de provincie**. Oorspronkelijk was er slechts één account per provincie. Indien er meerdere beheerders zijn, dan moeten ze met een **persoonlijke system account werken**. Die zien er doorgeens uit als `provincie_voornaam`. 
Deze persoonlijke accounts maken het mogelijk om zicht te krijgen op wat er precies gebeurt in de Studio omgeving. Dit is noodzakelijk om te begrijpen wat er allemaal gebeurt.


### Users

Deze accounts kunnen **alle data in PRODUCTIE** zien.

Deze accounts zijn beschikbaar op vraag voor:
- **medewerkers van de provincie**
- **medewerkers van de gemeenten**

Indien je iemand kan verder helpen met dit soort account die buiten deze categorieën valt, dan dient dit besproken te worden op de Redactieraad.

## Opmerkingen

- **Deze manier van werken is maar OK zolang er geen gevoelige data in de map PRODUCTIE staan**. Er is een inventarisatie gebeurd begin 2018, waaruit bleek dat dat niet het geval was. Indien dit in de toekomst verandert, dan kunnen we de TESTMAP nog veranderen in een TEST- en BEVEILIGDE MAP.

- **De mappen van onze Projecten** (samenwerkingstrajecten met andere provinciale diensten) **staan nu in de map PRODUCTIE, zelfs als het project nog loopt**. Daarom staan deze aangeduid als &quot;in ontwikkeling&quot; zolang het project niet afgerond is.

## Praktisch

### Afspraken

- We maken **geen groepsaccounts**, maar individuele accounts.
- **Structuur van de Usercode** (en ook Login name): [tweelettercode voor de provincie]_[drielettercode van het project]_[voornaam gebruiker]. Bijvoorbeeld: an\_eco\_tom
- Standaard voegen we toe aan de **UserGroup &quot;users**&quot;

:grey\_exclamation: Een gebruiker die meerdere keren een **verkeerd paswoord** ingeeft, wordt op **&quot;LockedOut&quot;** gezet. Die kunnen dan niet meer zonder hulp binnen. Je kan dat voorkomen door mensen een permanent wachtwoord te geven. Dit is natuurlijk een theoretisch veiligheidsrisico. Een gebruiker die LockedOut is, kan wel nog steeds een paswoord-reset e-mail aanvragen zonder hulp.

### Aanmaken van accounts

- Maak een **Excel aan van deze vorm**:

| **Login name** | **Username** | **MailAddress** | **UserGroup** | **Usercode** |
| --- | --- | --- | --- | --- |
| an\_eco\_iemand | Iemand | [iemand@iets.be](mailto:iemand@iets.be) | users | an\_eco\_iemand |
| wv\_eco\_anders | Anders | [anders@ietsanders.be](mailto:anders@ietsanders.be) | users | wv\_eco\_anders |

- **Importeer deze Excel als metadata** in de [tabel Users in Studio](https://provincies.incijfers.be/Admin/Studio/Table?tableName=User).
- Wacht tot de **Databank gepubliceerd** is (als het snel moet gaan kan dit ook via [https://provincies.incijfers.be/admin/jive](https://provincies.incijfers.be/admin/jive))
- Geef **deze instructies** aan de eindgebruikers:
  - Ga naar [https://provincies.incijfers.be/databank](https://provincies.incijfers.be/databank)
  - Klik op het hamburger-menu, vervolgens Inloggen:

  ![image](https://user-images.githubusercontent.com/77432663/113412718-4c1af500-93b9-11eb-8c77-ee01282eb15d.png)

  - Probeer niet in te loggen, maar ga rechtsreeks naar &quot;Wachtwoord vergeten&quot;. Vul daar je e-mail adres in en wacht op een mail.
  - Je krijgt verdere instructies per mail. In die mail staan je &quot;naam&quot; (username) en een tijdelijk paswoord.
  - Eens ingelogd, zie je de gewoonlijke Inhoud onder de map EXTERN. Ga naar de map INTERN, en zoek daar de map van je Project.


