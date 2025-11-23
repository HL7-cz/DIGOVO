ValueSet: VsCarePathwayEncounterTypeCz
Id: vs-carepathway-encounter-type-cz
Title: "Typ klinické trajektorie (Encounter – DIGOVO)"
Description: """
Hodnoty pro klasifikaci typu kontaktu pacienta v rámci klinické trajektorie (Care Pathway)
v projektu DIGOVO. Používá se v profilu CZ_Encounter_SpecializedCenter.
"""

* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 Czech Republic"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

* include codes from system $encounterType
