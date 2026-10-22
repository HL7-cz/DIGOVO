Logical: LogCzResearch
Id: LogResearchCz
Title: "11. Výzkum"
Description: """
Logický model pro zachycení údajů o účasti pacienta na výzkumu nebo studii včetně dostupnosti biologických vzorků a souhlasu s kontaktováním. Struktura odpovídá českým národním požadavkům a je v souladu s CDE.
"""
* vyzkum 1..1 Base "Výzkumné aktivity" """Záznamy o účasti pacienta na výzkumu nebo studii, včetně dostupnosti biologických vzorků a souhlasu s kontaktováním."""
  * ucastNaVyzkumu 0..1 CodeableConcept "Účast pacienta na výzkumu/studii" """Zda pacient participoval ve výzkumu nebo studii. Lze rozlišit observační/intervenční (rozšíření možné později)."""
  * souhlasKontaktVyzkum 1..1 CodeableConcept "Souhlas s kontaktováním" """Zda pacient souhlasil s kontaktováním pro účely výzkumu. Hodnoty: Yes / No / Unknown / Not Asked."""
  * biologickyVzorekKDispozici 0..1 CodeableConcept "Biologický vzorek k dispozici" """Zda je biologický vzorek pacienta dostupný pro výzkumné účely."""
  * biologickyVzorekBiobanka 0..1 CodeableConcept "Vzorek uložen v biobance" """Položka 11.4: český název zdroje znamená vzorek v biobance, anglický název a definice vzorek pro molekulární diagnostiku. Původní název prvku je zachován, význam je nutné vyjasnit. Hodnoty: Yes / No / Unknown / Not Asked."""

* vyzkum.ucastNaVyzkumu from VsYesNoUnknownNotAskedDigovoCz (required)

* vyzkum.souhlasKontaktVyzkum from VsYesNoUnknownNotAskedDigovoCz (required)

* vyzkum.biologickyVzorekKDispozici from VsYesNoUnknownNotAskedDigovoCz (required)

* vyzkum.biologickyVzorekBiobanka from VsYesNoUnknownNotAskedDigovoCz (required)

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Research participation, biosample availability and agreement to be contacted about research."
