CodeSystem: CsGeneticMethodCz
Id: genetic-method-cz
Title: "Genetické a diagnostické metody (DIGOVO)"
Description: """
Číselník metod použitých pro potvrzení diagnózy vzácného onemocnění.
Zahrnuje klinické, genetické, biochemické a zobrazovací metody.
Vybráno podle logického modelu DIGOVO a harmonizováno s ERDRI Common Data Elements.
"""
* ^url = "https://hl7.cz/fhir/digovo/CodeSystem/genetic-method-cz"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"
* ^caseSensitive = true
* ^content = #complete

* #clinical "Klinické vyšetření"
  * ^definition = "Diagnóza založená na klinickém posouzení a symptomatologii."
  * ^designation[0].language = #en
  * ^designation[0].value = "Clinical evaluation"

* #genetic "Genetická metoda"
  * ^definition = "Potvrzení diagnózy pomocí genetické analýzy."
  * ^designation[0].language = #en
  * ^designation[0].value = "Genetic method"

* #biochemical "Biochemická analýza"
  * ^definition = "Potvrzení diagnózy biochemickými testy (např. enzymová aktivita, metabolity)."
  * ^designation[0].language = #en
  * ^designation[0].value = "Biochemical analysis"

* #biological "Biologická metoda"
  * ^definition = "Vyšetření založené na biologických nebo funkčních aspektech (např. buněčné testy)."
  * ^designation[0].language = #en
  * ^designation[0].value = "Biological assay"

* #imaging "Zobrazovací metoda"
  * ^definition = "Potvrzení diagnózy pomocí zobrazovacích technik (např. MRI, CT)."
  * ^designation[0].language = #en
  * ^designation[0].value = "Imaging method"

* #functional "Funkční vyšetření"
  * ^definition = "Vyšetření zaměřené na funkční parametry orgánů nebo systémů."
  * ^designation[0].language = #en
  * ^designation[0].value = "Functional exploration"

* #pathology "Patologicko-anatomická analýza"
  * ^definition = "Diagnóza potvrzená histologicky nebo patologickým vyšetřením."
  * ^designation[0].language = #en
  * ^designation[0].value = "Pathological anatomy"

* #other "Jiná metoda"
  * ^definition = "Jiná diagnostická metoda mimo uvedené."
  * ^designation[0].language = #en
  * ^designation[0].value = "Other"
