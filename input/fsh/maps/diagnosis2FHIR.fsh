Instance: LogRareDiseaseDiagnosisCz2DIGOVO
InstanceOf: ConceptMap
Usage: #definition
Title: "LogCzRareDiseaseDiagnosis → CZ_ConditionRareDisease + CZ_Observation_* (DIGOVO)"
Description: """
DIGOVO FHIR mapování na profily profily: CZ_ConditionRareDisease, CZ_Observation_Genotype,
CZ_Observation_Phenotype, CZ_Observation_BiologicalMethod, CZ_Observation_GeneticTest,
CZ_Observation_UndiagnosedFinding.
"""
* url = "https://hl7.cz/fhir/digovo/ConceptMap/LogRareDiseaseDiagnosisCz2DIGOVO"
* name = "LogRareDiseaseDiagnosisCz2DIGOVO"
* status = #draft
* experimental = true
* publisher = "Národní centrum pro elektronické zdravotnictví (NCEZ)"
* jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

// ------------------------------------------------------------------
// GROUP: Condition (hlavní diagnóza)
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-condition-raredisease"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.nazev
* group[=].element[=].display = "Název onemocnění (orpha)"
* group[=].element[=].target.code = #Condition.code
* group[=].element[=].target.display = "Condition.code (orpha)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.aktualniStav
* group[=].element[=].display = "Aktuální stav diagnózy"
* group[=].element[=].target.code = #Condition.clinicalStatus
* group[=].element[=].target.display = "Condition.clinicalStatus"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.metodaPotvrzeni
* group[=].element[=].display = "Metoda potvrzení diagnózy"
* group[=].element[=].target.code = #Condition.verificationStatus
* group[=].element[=].target.display = "Condition.verificationStatus"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.typOnemocneni
* group[=].element[=].display = "Typ onemocnění (sporadické/familiární)"
* group[=].element[=].target.code = #Condition.extension:typOnemocneni
* group[=].element[=].target.display = "Condition.extension (typOnemocneni)"
* group[=].element[=].target.equivalence = #relatedto

// ------------------------------------------------------------------
// GROUP: Genotyp → CZ_Observation_Genotype
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-genotype"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.gen
* group[=].element[=].display = "Gen (HGNC)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Gen (HGNC)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.genovaVarianta
* group[=].element[=].display = "Genová varianta (HGVS)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Genová varianta (HGVS)"
* group[=].element[=].target.equivalence = #equal

// ------------------------------------------------------------------
// GROUP: Fenotyp → CZ_Observation_Phenotype
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-phenotype"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.nediagnostikovane.fenotyp
* group[=].element[=].display = "Fenotypické projevy (HPO)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Fenotyp (HPO)"
* group[=].element[=].target.equivalence = #equal

// ------------------------------------------------------------------
// GROUP: Biologická metoda → CZ_Observation_BiologicalMethod
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-biologicalmethod"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.biologickaMetoda
* group[=].element[=].display = "Biologická metoda použitá v diagnostice"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Biologická metoda"
* group[=].element[=].target.equivalence = #equal

// ------------------------------------------------------------------
// GROUP: Metody / testy → CZ_Observation_GeneticTest
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-genetictest"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.metodaPotvrzeni
* group[=].element[=].display = "Metoda potvrzení (genetická/biochemická/clinical)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Typ testu / metoda"
* group[=].element[=].target.equivalence = #relatedto

// ------------------------------------------------------------------
// GROUP: Nediagnostikované → CZ_Observation_UndiagnosedFinding
// ------------------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogRareDiseaseDiagnosisCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-observation-undiagnosed"

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.nediagnostikovane.fenotyp
* group[=].element[=].display = "Nediagnostikovaný fenotyp (HPO)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Nediagnostikovaný fenotyp"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.nediagnostikovane.genotyp
* group[=].element[=].display = "Nediagnostikovaný genotyp (HGVS)"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Observation.value – Nediagnostikovaný genotyp"
* group[=].element[=].target.equivalence = #equal

// ------------------------------------------------------------------
// Volitelná mapování (doporučení) – pokud v logickém modelu existují
// ------------------------------------------------------------------
* group[=].element[+].code = #diagnozaVzacnehoOnemocneni.zavaznost
* group[=].element[=].display = "Závažnost onemocnění"
* group[=].element[=].target.code = #Condition.severity
* group[=].element[=].target.display = "Condition.severity"
* group[=].element[=].target.equivalence = #equal

// ------------------------------------------------------------------
// Fallback pro nemapované položky
// ------------------------------------------------------------------
* group[=].unmapped.mode = #other-map
* group[=].unmapped.url = "https://hl7.cz/fhir/digovo/ConceptMap/unmapped-handling"
