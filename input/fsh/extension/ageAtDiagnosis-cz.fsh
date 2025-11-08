Extension: CZ_Condition_AgeAtDiagnosis
Id: cz-condition-age-at-diagnosis
Title: "Věk při stanovení diagnózy (DIGOVO)"
Description: """
Rozšíření pro uvedení věku pacienta v době stanovení diagnózy.
Používá se v profilu CZ_ConditionRareDisease.
"""

* ^status = #active
* ^version = "1.0.0"
* value[x] only Age
