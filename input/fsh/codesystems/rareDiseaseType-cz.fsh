CodeSystem: CsRareDiseaseTypeCz
Id: rare-disease-type-cz
Title: "Typ vzácného onemocnění (DIGOVO)"
Description: """
Číselník pro určení, zda je vzácné onemocnění sporadické nebo familiární.
Používá se v rozšíření `Condition.extension:typOnemocneni`.
"""
* ^url = "https://hl7.cz/fhir/digovo/CodeSystem/rare-disease-type-cz"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"
* ^caseSensitive = true
* ^content = #complete

* #sporadic "Sporadické onemocnění"
  * ^definition = "Vzácné onemocnění, které se vyskytlo izolovaně bez rodinné anamnézy."
  * ^designation[0].language = #en
  * ^designation[0].value = "Sporadic disease"

* #familial "Familiární onemocnění"
  * ^definition = "Vzácné onemocnění, které se vyskytuje u více členů rodiny."
  * ^designation[0].language = #en
  * ^designation[0].value = "Familial disease"

* #unknown "Neznámý typ"
  * ^definition = "Typ onemocnění nelze určit z dostupných dat."
  * ^designation[0].language = #en
  * ^designation[0].value = "Unknown"
