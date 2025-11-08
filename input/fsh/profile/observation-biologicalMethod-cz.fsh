Profile: CZ_Observation_BiologicalMethod
Parent: Observation
Id: cz-observation-biologicalmethod
Title: "Observation (Biologická metoda – DIGOVO)"
Description: """
Záznam biologické nebo laboratorní metody použitý k potvrzení diagnózy vzácného onemocnění.
Slouží jako podpůrný důkaz (`Condition.evidence.detail`), na který mohou odkazovat genotypové výsledky.
"""
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

* status = #final
* code 1..1
* code.coding 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #LP234162-5
* code.coding.display = "Laboratory test method"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* effective[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from VsBiologicalMethodCz (example)
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
* derivedFrom 0..* 
* derivedFrom only Reference(Observation)
* interpretation 0..* 
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* hasMember 0..* 
* hasMember only Reference(CZ_Observation_Genotype)
* hasMember ^short = "Podřízené genotypové výsledky získané touto metodou"
