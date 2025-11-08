ValueSet: VsRareDiseaseTypeCz
Id: vs-rare-disease-type-cz
Title: "Typ vzácného onemocnění (DIGOVO)"
Description: """
Typ vzácného onemocnění — zda je onemocnění sporadické nebo familiární.
Používá se v rozšíření Condition.extension:typOnemocneni.
"""
* ^url = "https://hl7.cz/fhir/digovo/ValueSet/vs-rare-disease-type-cz"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"
* include codes from system $diseaseType

