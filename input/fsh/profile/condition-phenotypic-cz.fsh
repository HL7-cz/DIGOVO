Profile: CZ_Observation_PhenotypicManifestation
Parent: Observation
Id: cz-observation-phenotypic-manifestation
Title: "Observation (Klinické projevy – DIGOVO)"
Description: "Záznam klinických fenotypových projevů pomocí HPO nebo SNOMED CT."

* status = #final
* code = $loinc#80341-9 "Phenotypic abnormality"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] 1..1 
* value[x] only CodeableConcept
* valueCodeableConcept from VsHpoManifestationsCz (preferred)
* performer 0..*
* performer only Reference(CZ_PractitionerRoleCore)
