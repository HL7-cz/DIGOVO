Logical: LogCzTherapy
Id: LogTherapyCz
Title: "Informace o terapii pacienta"
Description:
"""Logický model pro zachycení informací o terapii u pacientů, zejména při léčbě vzácných onemocnění. Obsahuje informace o léčivech, dávkování, dalších intervencích a způsobech léčby. V souladu s českými národními požadavky a standardem PZ."""


* terapie 1..* Base "Terapie pacienta" """Záznam o jedné nebo více terapeutických intervencích pacienta (např. léčiva, dávkování, jiné intervence)."""
  * pokracujiciLecba 0..1 boolean "Pokračující léčba vzácného onemocnění" """Zda je léčba součástí pokračující terapie vzácného onemocnění (ano/ne)."""

  * lekyVzacne 0..* Base "Léky na vzácné onemocnění" """Seznam léčiv užívaných pro vzácné onemocnění."""
    * pripravek 1..1 CodeableConcept "Léčebný přípravek" """Kód léčebného přípravku podle ATC klasifikace."""
    * davkovaniACesta 1..1 string "Dávkování a cesta podání" """Popis dávky, četnosti podání a cesty podání (např. 500 mg 1x denně perorálně)."""
    /* převzato z modelu PZ
    * stav 1..1 code "A.2.9.2.1 Stav" """Stav identifikuje změny v medikaci v průběhu hospitalizace. Položka je důležitá pro rozlišení medikace ukončené, změněné či nově podávané v průběhu hospitalizace."""
    * indikace 0..1 CodeableConcept "A.2.9.2.2 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
    * duvodZmeny 0..1 CodeableConcept "A.2.9.2.3 Důvod změny medikace" """Důvod změny medikace vyjádřený textem případně kódem (např. nevhodné/nedostatečné dávkování, interakce léků a pod.)."""
    * suklKode 1..1 Identifier "A.2.9.2.4 Kód SUKL" """Kód léčiva dle databáze SÚKL."""
    * nazevLeku 1..1 string "A.2.9.2.5 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků, nebo IPS Absent and Unknown."""
    * aktivniLatky 0..* CodeableConcept "A.2.9.2.6 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
    * sila 0..* Quantity "A.2.9.2.7 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
    * forma 0..1 CodeableConcept "A.2.9.2.8 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. sirup, tableta apod."""
    * davkovani 0..* string "A.2.9.2.9 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
    * cestaPodani 0..1 CodeableConcept "A.2.9.2.10 Cesta podání" """Cesta podání."""
    * obdobiPodani 0..1 Period "A.2.9.2.11 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
    * delkaVybaveni 1..1 Quantity "A.2.9.2.12 Délka vybavení" """Počet dnů na který byl pacient vybaven léčivem. Pokud pacient nebyl vybaven, lékař zaznamená hodnotu 0."""*/
  * jineLecby 0..* Base "Jiné léčby nebo intervence" """Záznam o jiných léčbách nebo intervencích souvisejících s terapií (např. chirurgické zákroky, fyzioterapie, pomůcky)."""
    * pripravekNeboProstredek 0..1 CodeableConcept "Léčebný přípravek nebo prostředek" """Kód léčebného přípravku či prostředku podle ATC klasifikace."""
    * davkovaniACesta 0..1 string "Dávkování a cesta podání" """Popis dávky, četnosti podání a cesty podání."""
    * intervence 0..* CodeableConcept "Intervence" """Kód intervence dle klasifikací jako ICD-10, ICD-11 nebo SNOMED CT. Může jít o chirurgický zákrok, fyzioterapii apod."""
    /* převzato z modelu PZ
    * stav 1..1 code "A.2.9.2.1 Stav" """Stav identifikuje změny v medikaci v průběhu hospitalizace. Položka je důležitá pro rozlišení medikace ukončené, změněné či nově podávané v průběhu hospitalizace."""
    * indikace 0..1 CodeableConcept "A.2.9.2.2 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
    * duvodZmeny 0..1 CodeableConcept "A.2.9.2.3 Důvod změny medikace" """Důvod změny medikace vyjádřený textem případně kódem (např. nevhodné/nedostatečné dávkování, interakce léků a pod.)."""
    * suklKode 1..1 Identifier "A.2.9.2.4 Kód SUKL" """Kód léčiva dle databáze SÚKL."""
    * nazevLeku 1..1 string "A.2.9.2.5 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků, nebo IPS Absent and Unknown."""
    * aktivniLatky 0..* CodeableConcept "A.2.9.2.6 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
    * sila 0..* Quantity "A.2.9.2.7 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
    * forma 0..1 CodeableConcept "A.2.9.2.8 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. sirup, tableta apod."""
    * davkovani 0..* string "A.2.9.2.9 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
    * cestaPodani 0..1 CodeableConcept "A.2.9.2.10 Cesta podání" """Cesta podání."""
    * obdobiPodani 0..1 Period "A.2.9.2.11 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
    * delkaVybaveni 1..1 Quantity "A.2.9.2.12 Délka vybavení" """Počet dnů na který byl pacient vybaven léčivem. Pokud pacient nebyl vybaven, lékař zaznamená hodnotu 0."""*/
  