### Mapping to profiles

The guide contains the following mappings from individual logical models to FHIR profiles. These are ConceptMap relationships; a complete dataset exchange implementation still needs further work.

| Logical model | Mapping |
| --- | --- |
| Patient information | [Patient identity](ConceptMap-subject2FHIR-cz.html) |
| Consent | [Data reuse](ConceptMap-ConsentReuseData2FHIR-cz-digovo.html) |
| Diagnosis | [Rare disease diagnosis](ConceptMap-LogRareDiseaseDiagnosisCz2DIGOVO.html) |
| Disease history | [Disease history](ConceptMap-PatientHistory2FHIR-cz-digovo.html) |
| Family history | [Family members](ConceptMap-familyAncestors2FHIR-cz.html) |
| Care activities | [Healthcare activities](ConceptMap-map-LogHealthCareCz.html) |

The [DIGOVO Composition profile](StructureDefinition-cz-composition-digovo.html) currently defines four sections. The [model overview](logical-models.html) explains conditional requirements, source inconsistencies and items under review.
