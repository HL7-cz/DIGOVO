Logical: LogCzCarePathway
Id: LogCarePathwayCz
Title: "9. Trajektorie péče"
Description: """Logický model pro zachycení informací o klinické trajektorii (care pathway) pacienta v rámci péče o vzácné onemocnění. Obsahuje informace o odesílajícím subjektu, datu přijetí do specializovaného centra, zapojených lékařích a klinických službách."""


* carePathway 1..1 Base "Klinická trajektorie pacienta" """Záznam o postupu péče pacienta napříč zdravotnickými subjekty a specializovanými centry."""
  * odesilajiciSubjekt 0..1 CodeableConcept "Odesílající subjekt" """Identifikace odesílajícího subjektu (např. IČZ, typ poskytovatele, název)."""
/*  * idOrganizace 1..1 Identifier "Organizace odesílajícího subjektu" """Identifikátor organizace odesilajicího subjektu."""
    * organizace 1..1 string "Název organizace odesílajícího subjektu" """Název organizace, kterou odesílající subjekt reprezentuje."""*/  
  * datumDoporuceni 0..1 date "Datum doporučení" """Datum, kdy byl pacient doporučen k dalšímu vyšetření nebo péči."""
  * datumPrijetiSCentra 0..1 date "Datum přijetí do specializovaného centra" """Datum, kdy byl pacient přijat do specializovaného centra péče o vzácné onemocnění."""
  * osetrujiciLekari 1..* string "Jména ošetřujících lékařů" """Seznam jmen lékařů zapojených do péče. Může zahrnovat garanta léčby, ošetřující lékaře apod. Možnost výběru z nabídky."""
  /** idAutor 1..* Identifier "A.1.5.1 Identifikátor autora" """Identifikační číslo autora (zdravotnický pracovník nebo IS)."""
    * jmeno 1..1 HumanName "A.1.5.2 Jméno autora" """Jméno osoby nebo systému, který dokument sestavil."""
    * idOrganizace 1..1 Identifier "A.1.5.3 ID organizace" """Identifikátor organizace, kterou autor reprezentuje."""
    * organizace 1..1 string "A.1.5.4 Organizace autora" """Název organizace, kterou autor reprezentuje."""*/
  * datum 0..1 dateTime "A.1.5.5 Datum a čas uložení" """Datum a čas poslední modifikace dokumentu."""
  * centrumVzacnychOnemocneni 1..* string "Centrum pro vzácná onemocnění" """Název nebo kontakt na centrum péče o vzácná onemocnění. Vyplňuje se dle zadávající organizace."""
  * klinickaSluzba 0..* string "Klinická služba" """Popis souvisejících klinických služeb – může se týkat kontaktu, vyšetření, ERN centra nebo konziliární služby. Nutné upřesnit období."""
  * centrumSoucastiErn 0..1 CodeableConcept "9.7 Centrum součástí ERN" """Yes / No / Unknown / Not Asked. Při kladné odpovědi je vyžadován alespoň jeden název ERN v položce 9.8."""
  * centrumSoucastiErn from VsYesNoUnknownNotAskedDigovoCz (required)
  * ernUcast 0..* Base "Zapojení do ERN" """Údaje o zapojení pacienta do evropské referenční sítě (ERN) a případné registraci."""
    * nazevErn 0..1 string "Název ERN" """Název evropské referenční sítě (ERN), do které je centrum zapojeno. Výběr z nabídky."""
    * pacientVRegistru 0..1 CodeableConcept "Pacient zadán do registru ERN" """Zda byl pacient zadán do registru v rámci dané ERN sítě (Yes / No / Unknown / Not Asked)."""

* carePathway.ernUcast.pacientVRegistru from VsYesNoUnknownNotAskedDigovoCz (required)

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Patient care pathway across providers and specialist centres, including referral, inclusion dates, physicians and clinical services."
