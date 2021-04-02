# Gebruikersaccounts

## Wie krijgt een account, en wat krijgt die te zien?

**Iedereen heeft een gebruikersaccount**: zelfs gasten zijn &#39;ingelogd&#39; als user &quot;extern&quot;. Deze Users zijn geassocieerd met een UserGroup/Gebruikersgroep. Belangrijke UserGroups:

- **Swing Beheerders** hebben recht op **alle mappen** , ook de TESTMAP en doorgaans ook tot **Studio**.
  - Gebruikersgroep = **system**.
- **Speciale gebruikers** (personeel provincie, centrumsteden of andere specifieke klanten met een account) kunnen inloggen op provincies.incijfers.be/databank en zien de map **PRODUCTIE,** waar zowel het **INTERNE en EXTERNE** deel te zien is.
  - Gebruikersgroep = **users.**
  - Ze hebben recht op zowel INTERN als drie EXTERNE AccessGroups.
- **Gasten** hebben enkel toegang tot de map **EXTERN.**
  - Gebruikersgroep = **extern.**
  - In de tabel AccessGroups wordt bepaald dat ze landen op het thema EXTERN. Ze krijgen toegang tot de drie EXTERNE AccessGroups.

Daarnaast kan er **maatwerk** gebeuren om mensen &quot;op te sluiten&quot; in een bepaald thema.

Alles over accesgroups vind je [hier](https://github.com/provinciesincijfers/JiveDocumentation/blob/master/05.%20Themaboom%20-%20Toegang%20beheren/Toegangsgroepen.md) terug.


## Regels per gebruikersgroep

### System

Deit account **wordt enkel gebruikt door de &quot;hoofdbeheerder&quot; van de provincie**. Indien er meerdere beheerders zijn, dan vragen zij een account aan van het type provincie\_voornaam. Enkel op die manier is het mogelijk om overzicht te houden van wat er gebeurt in de Databank.


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
