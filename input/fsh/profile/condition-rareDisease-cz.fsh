Profile: CZ_ConditionRareDisease
Parent: Condition
Id: cz-condition-raredisease
Title: "Condition (Vzácné onemocnění – DIGOVO)"
Description: """
Diagnóza vzácného onemocnění s kódováním dle orphacode.
Vazby na genetické a fenotypové důkazy jsou vedeny přes `Condition.evidence.detail`.
"""

* code 1..1
* code.coding 1..*
* code.coding.system = "$orpha"
* code from VsorphaCodeCz (preferred)
* subject only Reference(CZ_PatientCore)   
* subject 1..1
* clinicalStatus 1..1
* verificationStatus 0..1
* evidence 0..*
* evidence.detail only Reference(CZ_Observation_Genotype or CZ_Observation_Phenotype or CZ_Observation_BiologicalMethod)
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Diagnóza vzácného onemocnění</div>"
* severity 0..1 
* severity only CodeableConcept
* severity from VsConditionSeverityRareDisease (preferred)
* severity ^binding.description = "Použít kódy pro mírné, střední, těžké nebo život-ohrožující onemocnění." 
* extension contains CZ_Condition_AgeAtDiagnosis named ageAtDiagnosis 0..1