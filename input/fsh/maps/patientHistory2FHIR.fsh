Instance: PatientHistory2FHIR-cz-digovo
InstanceOf: ConceptMap
Usage: #definition
Title: "DIGOVO PatientHistory Logical Model → FHIR Mapping"
Description: """
Mapování logického modelu DIGOVO 'Anamnéza pacienta (LogCzPatientHistory)' na konkrétní FHIR profily CZ DIGOVO.
"""
* url = "https://hl7.cz/fhir/digovo/ConceptMap/patientHistory2FHIR-cz-digovo"
* name = "PatientHistory2FHIRCzDigovo"
* status = #draft
* experimental = true


//---------------------------------------------
// Věk začátku potíží → CZ_Observation_PatientOnsetAge
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-patient-onset-age"


* group[=].element[+].code = #vekZacatekPotizi
* group[=].element[=].display = "Věk nebo datum začátku potíží"
* group[=].element[=].target.code = #Observation.valueQuantity
* group[=].element[=].target.display = "CZ_Observation_PatientOnsetAge"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapováno na profil CZ_Observation_PatientOnsetAge (věk nebo datum začátku potíží)."


//---------------------------------------------
// Věk při diagnóze → Condition.extension:ageAtDiagnosis
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-condition-raredisease"

* group[=].element[+].code = #vekPriDiagnoze
* group[=].element[=].display = "Věk nebo datum při diagnóze"
* group[=].element[=].target.code = #Condition.extension:ageAtDiagnosis
* group[=].element[=].target.display = "Rozšíření CZ_Condition_AgeAtDiagnosis"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Rozšíření CZ_Condition_AgeAtDiagnosis pro věk při diagnóze (Quantity – jednotky UCUM)."

//---------------------------------------------
// Dědičnost → CZ_Observation_HereditaryPattern
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-hereditary-pattern"

* group[=].element[+].code = #dedicnost
* group[=].element[=].display = "Dědičnost onemocnění"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "CZ_Observation_HereditaryPattern"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Používá profil CZ_Observation_HereditaryPattern (Yes/No/Unknown – VsYesNoUnknownCz)."

//---------------------------------------------
// Klinické manifestace → CZ_Observation_PhenotypicManifestation
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-phenotypic-manifestation"

* group[=].element[+].code = #klinickeManifestace
* group[=].element[=].display = "Klinické projevy"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "CZ_Observation_PhenotypicManifestation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Používá profil CZ_Observation_PhenotypicManifestation – kódování dle HPO (VsHpoManifestationsCz)."

//---------------------------------------------
// Vyšetření → CZ_Procedure_Examination
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-procedure-examination"

* group[=].element[+].code = #vysetreni
* group[=].element[=].display = "Vyšetření vztahující se k onemocnění"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = "CZ_Procedure_Examination"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Vyšetření modelováno jako Procedure – profil CZ_Procedure_Examination (ValueSet VsSnomedProceduresCz)."

//---------------------------------------------
// Postižení → CZ_Observation_FunctionalDisability
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogPatientHistoryCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-functional-disability"

* group[=].element[+].code = #postizeni
* group[=].element[=].display = "Funkční nebo strukturální postižení"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "CZ_Observation_FunctionalDisability"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Používá profil CZ_Observation_FunctionalDisability – kódování dle ICF (VsIcfFunctionalDisabilityCz)."
