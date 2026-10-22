Logical: LogCzFoetalData
Id: LogFoetalDataCz
Title: "2b. Údaje o plodu a matce"
Description: """Položky 2b.1–2b.11 datasetu RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx. Záznam se vede pro každý postižený plod samostatně. Povinné položky platí při použití této sekce; způsob zachycení neznámých hodnot musí určit konkrétní implementace."""

* rodnePrijmeniMatky 1..1 string "2b.1 Rodné příjmení matky" """Příjmení matky při narození."""
* prijmeniMatky 0..1 string "2b.2 Příjmení matky" """Aktuální příjmení, pokud se liší od rodného."""
* jmenoMatky 0..1 string "2b.3 Jméno matky" """Jméno matky podle úředního dokladu."""
* identifikatorMatky 1..1 Identifier "2b.4 Národní identifikátor matky" """Rodné číslo nebo jiný identifikátor matky pro propojení záznamů."""
* pocatekTehotenstvi 1..1 date "2b.5 Datum počátku těhotenství" """Datum začátku těhotenství nebo početí, případně částečné datum. Neznámé datum není textová hodnota typu date; jeho zachycení je nutné vyřešit v implementačním profilu."""
* vicecetneTehotenstvi 1..1 CodeableConcept "2b.6 Vícečetné těhotenství" """Yes / No / Unknown / Not Asked."""
* vicecetneTehotenstvi from VsYesNoUnknownNotAskedDigovoCz (required)
* pohlaviPlodu 1..1 CodeableConcept "2b.7 Pohlaví plodu" """Mužské / Ženské / Neurčené."""
* jmenoPlodu 0..1 string "2b.8 Jméno plodu" """Plánované nebo prozatímní jméno, je-li určeno."""
* identifikatorPlodu 1..1 Identifier "2b.9 Identifikátor plodu" """Lokální identifikátor plodu. Zdroj označuje položku jako povinnou, ale český název a nápověda ji podmiňují dostupností; do vyjasnění je zachována povinnost dle sloupce Mandatory?."""
* zemePobytuMatky 1..1 CodeableConcept "2b.10 Země trvalého pobytu matky" """Země podle ISO 3166-1 alpha-2."""
* mistoPobytuMatky 1..1 string "2b.11 Místo trvalého pobytu matky" """Město nebo PSČ trvalého pobytu matky."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Items 2b.1–2b.11 of the rare disease dataset. A separate record is kept for each affected foetus. Required items apply when this subsection is used. The implementation must define how unknown values are represented."
