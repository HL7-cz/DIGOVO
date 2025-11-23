ValueSet: VsHealthCareGoalCz
Id: vs-healthcare-goal-cz
Title: "Cíle poskytnuté péče (DIGOVO)"
Description: """
Hodnoty pro vyjádření účelu nebo cíle poskytované péče v rámci DIGOVO.
Používá se v `Procedure.reasonCode`.
"""
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "HL7 Czech Republic"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

* include codes from system $goal


