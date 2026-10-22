Logical: LogCzFamilyAncestors
Id: LogFamilyAncestorsCz
Title: "6. Rodinná anamnéza"
Description: """Logický model pro záznam informací o rodinných předcích ve vztahu k vzácnému onemocnění."""

* rodinniPredkove 1..1 Base "Rodinní předkové relevantní k VO" """Údaje o rodinných předcích, kteří mohou být relevantní pro vzácné onemocnění.
Položky 6.1, 6.3 a 6.4 jsou ve zdroji povinné. Příbuzenský vztah 6.2 se vyplňuje v kontextu postiženého člena rodiny; povinnost při nepřítomnosti postiženého člena vyžaduje vyjasnění."""
  * postizenyPredek 1..1 CodeableConcept "Postižený předek (propositus)" """Zda byl některý z předků postižen vzácným onemocněním. Hodnoty: Yes / No / Unknown / Not Asked."""
    * identifikatorPostizenehoPredka 0..1 Identifier "Identifikátor prvního postiženého předka" """Identifikátor prvního postiženého předka (ID code).
V případě více postižených lze použít rozšíření (rodokmen). Pokud ID není známo nebo předek zemřel, použije se N/A."""
    * rodicovskyVztah 0..1 CodeableConcept "Rodičovský vztah k postiženému" """Popis vztahu mezi postiženým a předkem (např. otec, matka, sourozenec). Příbuzenský vztah dle číselníku; používá se při relevantním postiženém členu rodiny."""
  * konsanguinita 1..1 CodeableConcept "Konsanguinita" """Informace o pokrevní příbuznosti mezi rodiči. Hodnoty: Yes / No / Unknown."""
  * jiniRelevantniPredkove 1..1 CodeableConcept "Jiní relevantní předkové" """Další rodinní příslušníci relevantní k onemocnění.
Možné kódování: orphacode, ICD-10, ICD-11, SNOMED CT nebo N/A."""

* rodinniPredkove.postizenyPredek from VsYesNoUnknownNotAskedDigovoCz (required)

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Family history relevant to rare disease, including affected relatives and consanguinity."
