Logical: LogCzConsentReuseData
Id: LogConsentReuseDataCz
Title: "1. Souhlas s opakovaným použitím dat"
Description: """Záznam o souhlasu pacienta nebo zákonného zástupce s opakovaným použitím dat pacienta."""

* souhlasOpakovanePouzitiDat 1..1 CodeableConcept "Souhlas pacienta/zákonného zástupce s opakovaným použitím dat" """Určuje, zda pacient nebo jeho zákonný zástupce udělil souhlas s opakovaným použitím dat (Yes / No / Unknown / Not Asked). Pokud je pacient neschopen souhlasu, bezvědomí apod., souhlas vyjádří zákonný zástupce. Neznámá odpověď se nesmí automaticky převést na „ne“. Dataset má rozpor mezi českým souhlasem a anglickou námitkou; do vyjasnění je zachován český význam stávajícího prvku a nesmí se automaticky invertovat odpověď."""

* souhlasOpakovanePouzitiDat from VsYesNoUnknownNotAskedDigovoCz (required)

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Records consent by the patient or legal representative to reuse patient data. The source inconsistency between consent and objection remains open."
