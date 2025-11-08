Profile: CZ_Observation_GeneticTest
Parent: Observation
Id: cz-observation-genetictest
Title: "Observation (Genetická metoda – DIGOVO)"
Description: """
Záznam genetické testovací metody, například chromozomální, sekvenační, nebo NGS.
Používá se pro popis konkrétního testu v rámci diagnostiky vzácného onemocnění.
"""

* status = #final
* code 1..1
* code.coding.system = "http://loinc.org"
* code.coding.code = #81247-9
* code.coding.display = "Genetic test method [Type]"
* subject 1..1 
* subject only Reference(CZ_PatientCore)
* effective[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from VsGeneticMethodCz (example)
* performer 0..* 
* performer only Reference(CZ_PractitionerRoleCore)
* derivedFrom 0..* 
* derivedFrom only Reference(CZ_Observation_BiologicalMethod)
