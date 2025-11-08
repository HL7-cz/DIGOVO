Profile: CZ_Observation_FunctionalDisability
Parent: Observation
Id: cz-observation-functional-disability
Title: "Observation (Postižení – DIGOVO)"
Description: "Záznam funkčního nebo strukturálního postižení dle klasifikace ICF."

* status = #final
* code = $loinc#72114-2 "Functional status"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] 1..1 
* value[x] only CodeableConcept
* valueCodeableConcept from VsIcfCz (preferred)
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
