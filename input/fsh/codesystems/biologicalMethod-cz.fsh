CodeSystem: CsBiologicalMethodCz
Id: biological-method-cz
Title: "Biologické metody použité v diagnostice (DIGOVO)"
Description: """
Číselník biologických metod používaných při diagnostice vzácných onemocnění.
Vyjadřuje, jakým způsobem byla provedena biologická nebo laboratorní analýza, 
která vedla ke zjištění genotypu nebo potvrzení diagnózy.
"""
* ^url = "https://hl7.cz/fhir/digovo/CodeSystem/biological-method-cz"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "Národní centrum pro elektronické zdravotnictví (NCEZ)"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"
* ^caseSensitive = true
* ^content = #complete

* #chromosomal "Chromozomální analýza"
  * ^definition = "Vyšetření chromozomů nebo jejich strukturálních změn."
  * ^designation[0].language = #en
  * ^designation[0].value = "Chromosomal analysis"

* #apca "APCA (Amplified Probe-based Comparative Analysis)"
  * ^definition = "Metoda založená na hybridizaci amplifikovaných sond pro detekci variant."
  * ^designation[0].language = #en
  * ^designation[0].value = "APCA"

* #targeted-sequencing "Cílené sekvenování"
  * ^definition = "Analýza specifických genů nebo úseků DNA pomocí cíleného sekvenování."
  * ^designation[0].language = #en
  * ^designation[0].value = "Targeted sequencing"

* #ngs "Sekvenování nové generace (NGS)"
  * ^definition = "Vysoce výkonná metoda sekvenování genomu nebo exomu."
  * ^designation[0].language = #en
  * ^designation[0].value = "Next Generation Sequencing (NGS)"

* #other "Jiná metoda"
  * ^definition = "Jiná biologická metoda mimo uvedené."
  * ^designation[0].language = #en
  * ^designation[0].value = "Other"

* #na "Nevztahuje se"
  * ^definition = "Metoda není aplikovatelná."
  * ^designation[0].language = #en
  * ^designation[0].value = "Not applicable"
