Logical: LogCzSubject
Id: LogSubjectCz
Title: "2. Informace o pacientovi"
Description: """Identifikace případu a příznak plodu podle položek 2.1–2.2 datasetu RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx. Osobní údaje 2a a údaje o plodu 2b jsou samostatné dílčí modely. Větve jsou volitelné na úrovni struktury; jejich použitelnost závisí na příznaku plodu a klinickém kontextu."""

* identifikator 1..* Identifier "2.1 Národní identifikátor pacienta" """Identifikátor pro propojení záznamů primární péče, např. rodné číslo nebo identifikátor cizince. Použitelnost pro případ plodu je nutné vyjasnit se správcem datasetu; nenahrazuje identifikátory matky a plodu v sekci 2b."""
* priznakPlodu 1..1 CodeableConcept "2.2 Příznak plodu" """Určuje, zda se případ týká plodu. Hodnoty Yes / No / Unknown / Not Asked."""
* priznakPlodu from VsYesNoUnknownNotAskedDigovoCz (required)
* osobniADemografickeUdaje 0..1 LogCzPersonalInformation "2a. Osobní a demografické údaje" """Položky 2a.1–2a.9 pro narozenou osobu. Přesné podmínky použitelnosti větví 2a a 2b zůstávají otevřené."""
* udajeOPlodu 0..1 LogCzFoetalData "2b. Údaje o plodu a matce" """Položky 2b.1–2b.11 pro případ týkající se plodu. Nezaměňovat s prenatální a perinatální anamnézou v sekci 5."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Case identification and foetus flag, items 2.1–2.2. Personal information 2a and foetal data 2b have separate models. Branches are structurally optional; applicability depends on the foetus flag and clinical context."
