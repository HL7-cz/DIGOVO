Profile: CZ_Observation_HereditaryPattern
Parent: Observation
Id: cz-observation-hereditary-pattern
Title: "Observation (Dědičnost – DIGOVO)"
Description: "Záznam o dědičnosti onemocnění (Yes / No / Unknown)."

* status = #final
* code = $loinc#81252-9 "Inheritance pattern"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] 1..1 
* value[x] only CodeableConcept
* valueCodeableConcept from $v2-0136 (required) // HL7 v2 Table 0136 Inheritance Pattern
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)