# Goed communiceren van URLs in PinC

## Basisprincipes

- We **begeleiden de mensen zo veel mogelijk** naar wat ze precies nodig hebben
- Maar we **vermelden óók de voorpagina provincies.incijfers.be** om het hele project mee in beeld te krijgen
- **De eindgebruiker heeft geen boodschap aan lange url&#39;s**. Als je parameters gaat meenemen, dan moeten die NIET zichtbaar zijn voor een eindgebruiker. Met andere woorden: als je wil verwijzen naar &quot;rapport detailhandel&quot;, zorg dan dat in de tekst &quot;rapport detailhandel&quot; zichtbaar is, en niet de lange achterliggende URL

Als je een specifiek rapport wil communiceren op een klantgerichte manier, en je wil ook je impact kunnen meten, dan dient het **resultaat** er uit te zien als het onderstaande:

> De klant ziet een [link](https://provincies.incijfers.be/jive/report/?id=rapport_detailhandel&amp;openinputs=true&amp;project=ff_preview), en de link verwijst naar https://provincies.incijfers.be/jive/report/?id=rapport_jouwrapport&openinputs=true&mtm_campaign=jouw-project

## Ingrediënten van een goede URL

- Wat je URL ook is: **klik er eens op voor je hem uitstuurt**. Check of je niet toevallig ingelogd bent in de databank, want dan heb je misschien meer rechten als je klant

- **Bijsturen ervaring van de klant**
  - Voor ***rapportcommunicatie***. Stel, je rapport heeft rapportcode rapport_detailhandel. Begin dan met `https://provincies.incijfers.be/Jive/report?id=rapport_detailhandel`.
 Er zijn ook andere manieren om rapporten te laten zien, maar standaard gebruiken we deze.
    - Je kan verrijken met `&openinputs=true` om rechtsreeks te landen op het keuzeschermpje voor gebieden
    - Of je kan verrijken met `&input_geo=gemeente_11002` indien je naar gemeente Antwerpen stuurt en hen rechtsreeks naar het rapport voor hun gemeente wil sturen
  - Voor communiceren van ***een cijfer in de Databank*** zelf.
    - Ideaal voor maatwerk. Als je kan antwoorden op basis van data uit de Databank, doe dat dan. En als je dat doet, doe het dan bij voorkeur met een **deellink**, eerder dan met een dump. Maar let op:
      - zo&#39;n link bevat ook je gebruikersonderwerpen en je eigen gebiedsgroepen
      - die overrulet standaard wat mensen al hadden in hun sessie (openstaande presentaties, eigen onderwerpen/groepen)
    - Je kan ook een presentatie samenstellen aan de hand **van complexere parameters**, zie [Achter de schermen van de databank](https://provincies.incijfers.be/jive/report/?id=achter_de_schermen). Voeg steeds `&keepworkspace=true` toe aan je URL. Dit respecteert wat ze al hadden en voegt je nieuwe presentatie gewoon toe aan hun sessie

  - Voor communiceren van een **Dashboard**.
    - Als je naar een **specifieke pagina** wil verwijzen, dan kan dat eenvoudig door de **URL te kopiëren die je bovenaan ziet**. Bijvoorbeeld: https://provincies.incijfers.be/dashboard/Nationaliteit-en-herkomst/
 ❕ Vaak ga je hier dashboard/dashboard/ zien staan. Da&#39;s onnozel, dus dat kan je beter vervangen door slechts één keer dashboard/. Maar het werkt beide.
    - Ook hier kan **je verwijzen naar een specifiek gebied**. Voeg hiervoor `?regionlevel=_gemeente_&regioncode=24134` toe (voorbeeld voor gemeente Scherpenheuvel-Zichem)
- **Verzamelen van gegevens over het succes van je communicatie:**

**Voeg steeds aan het einde van je URL nog MINSTENS toe:**  ***mtm_campaign=naam_van_je_project.*** 
Dit laat toe om te filteren hoeveel van onze bezoekers binnenkomen via projectcommunicatie, en welk project dan wel precies. Hoe beter je je naam kiest, hoe beter je kan rapporten. Als je bijvoorbeeld altijd begint met &quot;provant_&quot; , dan kan je eenvoudig rapporteren over alle campagnes van provant. Je kunt het effect van je campagne dan meten via Matomo.

### Matomo URLs opstellen

´mtm_campaign=naam´       pinc-nieuwsbrief-februari-2021

Unieke omschrijving van de campagne, in zijn geheel. Dat mag dus de andere parameters herhalen als je dat wenst.

´mtm_kwd=keyword´         dashboard-demografie, rapport-bevolking, update-bevolking

Inhoudelijke omschrijving van de link, indien ze gewenst.

´mtm_source=bron´         pinc-nieuwsbrief, limburgincijfers

Het specifieke kanaal waarmee je communiceerde.

´mtm_medium=medium´       e-mail, website, social-media

Het type kanaal waarmee je communiceerde.

´mtm_content=inhoud´      [inhoudelijke omschrijving van hoe je de link aanbracht]

Optioneel, bijvoorbeeld de tekstomschrijving die je gebruikte in je pagina. Ik heb de indruk dat dit automatisch aangevuld wordt adhv de tekst in de link zelf.

:grey_exclamation: ***Gebruik overal kleine letters.  Gebruik in geen enkele van deze velden &quot;speciale tekens&quot; of spaties. Je kan eventueel een spatie vervangen door %20; dat gaat soms mooi als spatie weergegeven worden.***

**Je URL stel je als volgt samen:**
(let op de plaatsing van het vraagteken)

> ´https://provincies.incijfers.be/WAAR-JE-NAAR-TOE-WIL-IN-SWING?mtm_campaign=naam&mtm_kwd=keyword&mtm_source=bron&mtm_medium=medium&mtm_content=inhoud´

OF

> 'https://provincies.incijfers.be/WAAR?-JE-NAAR-TOE-WIL-IN-SWING&mtm_campaign=naam&mtm_kwd=keyword&mtm_source=bron&mtm_medium=medium&mtm_content=inhoud´

Ofwel: **als je oorspronkelijke URL reeds een vraagteken bevatte, dan sluit je aan met &amp;. Als er nog geen vraagteken in de URL stond, zet die dan voor je met Matomo parameters begon.**

## Communiceren met je communicatoren

**Controleer zélf je communicatiemensen**. Er is al gecommuniceerd over **provincie**.incijfers.be (op het moment dat dat nog op een heel mottige pagina uitkwam) en bijna met een rapportcode van een uitdovend rapport. **Wees dus op je hoede.**

Je kan wellicht **best zelf een URL prepareren** en vragen dat ze die gebruiken. Stuur deze eventueel door als een txt of wordbestand in bijlage, want sommige provincies gebruiken software die alle links ontvangen via Outlook vervangt door iets dat over een virusscanner gaat. En het is niet de bedoeling dat onze klanten over de virusscanner van de provincie gaan.

Vraag dat ze bij voorkeur de **afgewerkte tekst op voorhand doorsturen, inclusief links.**

Vraag dat ze **alle links die gebruikt worden ook eens aanklikken**.

**In nieuwsbrief-systemen worden links intern vervangen door een &quot;tracking url&quot;.** Dat kan geen kwaad en is compatibel met onze eigen registratie. Het is dus geen probleem als je in hun tekst iets raars ziet staan, zolang je bij het aanklikken ervan maar de URL te zien krijgt die jij vooropgesteld had.
