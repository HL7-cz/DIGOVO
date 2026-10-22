Logical: LogCzUsefulInfo
Id: LogUsefulInfoCz
Title: "12. Užitečné informace"
Description: """Logický model pro zachycení doplňujících informací o onemocnění, doporučeních a hlavních varováních důležitých pro péči o pacienta. Součástí může být i pacientský souhrn.
"""

* uzitecneInformace 0..1 BackboneElement "Užitečné informace" """Související informace pro zdravotníky a pacienty."""
  * informaceOOnemocneni 0..* url "Informace o onemocnění a doporučení" """Odkazy na validované informační zdroje – např. klinické doporučené postupy nebo informační materiály."""
  * hlavniVarovani 0..* string "Hlavní varování" """Důležitá klinická upozornění, např. alergie, rizika nebo jiná závažná sdělení. Součást pacientského souhrnu."""
  * driveVyslovenaPrani 0..* string "12.3 Dříve vyslovená přání" """Zaznamenaná přání pacienta pro budoucí rozhodování o péči. Dataset označuje položku jako volitelnou v EHR a požadovanou pro EHDS Patient Summary; konkrétní reprezentace dokumentu je úkolem implementačního profilu."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Additional disease information, guidance and clinical alerts relevant to patient care and the patient summary."
