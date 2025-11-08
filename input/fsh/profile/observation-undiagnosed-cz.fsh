Profile: CZ_Observation_UndiagnosedFinding
Parent: Observation
Id: cz-observation-undiagnosed
Title: "Observation (Nediagnostikovaný nález – DIGOVO)"
Description: """
Používá se v případech, kdy fenotypické nebo genetické rysy pacienta nelze zatím přiřadit ke konkrétní diagnóze.
Slouží jako podklad pro evidenci nediagnostikovaných stavů (CDE-RD „Undiagnosed case“).
"""

* status = #final
* code 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #81262-8
* code.coding.display = "Undiagnosed rare disease finding"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] only CodeableConcept
* valueCodeableConcept from VsHpoManifestationsCz (example)
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
