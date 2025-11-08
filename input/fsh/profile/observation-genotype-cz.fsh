Profile: CZ_Observation_Genotype
Parent: Observation
Id: cz-observation-genotype
Title: "Observation (Genotyp – DIGOVO)"
Description: """
Záznam genotypu pacienta ve vztahu ke vzácnému onemocnění.
Používá se jako podkladový důkaz (`Condition.evidence.detail`) v rámci diagnózy vzácného onemocnění.
"""

* status = #final
* code 1..1
* code.coding 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #48018-6
* code.coding.display = "Genotype interpretation"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* effective[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from VsBiologicalMethodCz (example) //input/fsh/valueSet/cz.digovo-biologicalMethod.fsh
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
* specimen 0..1 
* specimen only Reference(Specimen)
* hasMember 0..* 
* hasMember only Reference(CZ_Observation_Genotype)
* interpretation 0..*
