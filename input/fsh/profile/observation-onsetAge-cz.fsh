Profile: CZ_Observation_PatientOnsetAge
Parent: Observation
Id: cz-observation-patient-onset-age
Title: "Observation (Věk při začátku potíží / diagnóze – DIGOVO)"
Description: """
Záznam o věku nebo datu, kdy začaly potíže spojené se vzácným onemocněním.
"""

* status = #final
* code = $loinc#39016-1 "Age at onset"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] 1..1 
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)