Logical: LogCzPersonalInformation
Id: LogPersonalInformationCz
Title: "2a. Osobní a demografické údaje"
Description: """Položky 2a.1–2a.9 datasetu RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx. Spojuje osobní a demografické údaje, které mají ve zdroji společné označení 2a. Povinné položky se vztahují k přítomné sekci."""

* rodnePrijmeni 1..1 string "2a.1 Rodné příjmení pacienta" """Příjmení při narození."""
* prijmeni 0..1 string "2a.2 Příjmení pacienta" """Aktuální příjmení, pokud se liší od rodného."""
* jmeno 1..1 string "2a.3 Jméno pacienta" """Jméno podle úředního dokladu."""
* datumNarozeni 1..1 date "2a.4 Datum narození pacienta" """Kalendářní datum narození."""
* pohlaviPriNarozeni 1..1 CodeableConcept "2a.5 Pohlaví při narození" """Muž / Žena / Neurčeno; jde o pohlaví při narození, nikoli administrativní pohlaví při zadání."""
* zemeNarozeni 1..1 CodeableConcept "2a.6 Země narození" """Země podle ISO 3166-1 alpha-2."""
* mistoNarozeni 0..1 string "2a.7 Místo narození" """Město nebo PSČ místa narození."""
* zemePobytu 1..1 CodeableConcept "2a.8 Země trvalého pobytu" """Země podle ISO 3166-1 alpha-2."""
* mistoPobytu 1..1 string "2a.9 Místo trvalého pobytu" """Město nebo PSČ trvalého pobytu."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Items 2a.1–2a.9 of the rare disease dataset. Combines the personal and demographic source headings numbered 2a. Required items apply when this subsection is used."
