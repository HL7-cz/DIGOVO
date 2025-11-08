Profile: CZ_Observation_Phenotype
Parent: Observation
Id: cz-observation-phenotype
Title: "Observation (Fenotyp – DIGOVO)"
Description: """
Fenotypické projevy pacienta, vyjádřené pomocí terminologie HPO (Human Phenotype Ontology).
Používá se jako podpůrný důkaz (`Condition.evidence.detail`) pro diagnózu vzácného onemocnění.
"""

* status = #final
* code 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #81259-4
* code.coding.display = "Phenotypic observation"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* value[x] only CodeableConcept
* valueCodeableConcept from VsHpoManifestationsCz (preferred) // input/fsh/valueSet/cz.digovo-HpoPhenotype.fsh
* valueCodeableConcept.text 0..1
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
* derivedFrom 0..* 
* derivedFrom only Reference(CZ_Observation_Genotype)
