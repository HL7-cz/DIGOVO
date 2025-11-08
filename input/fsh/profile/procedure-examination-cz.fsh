Profile: CZ_Procedure_Examination
Parent: Procedure
Id: cz-procedure-examination
Title: "Procedure (Vyšetření – DIGOVO)"
Description: """
Záznam o vyšetření provedeném u pacienta v souvislosti se vzácným onemocněním.
Vyšetření je modelováno jako FHIR Procedure a kódováno pomocí SNOMED CT.
Používá se v sekci anamnézy (PatientHistory).
"""

* status = #completed
* code 1..1
* code from $snomed (preferred)
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* performed[x] 0..1
* performer 0..* 
* performer.actor only Reference(CZ_PractitionerRoleCore)
* performer.onBehalfOf only Reference(CZ_OrganizationCore)
* reasonReference 0..* 
* reasonReference only Reference(CZ_ConditionRareDisease)


