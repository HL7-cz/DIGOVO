### Mapování na profily

Příručka obsahuje následující mapování dílčích logických modelů na profily FHIR. Jde o koncepční vazby typu ConceptMap; úplnou výměnnou implementaci datasetu je nutné dopracovat.

| Logický model | Mapování |
| --- | --- |
| Informace o pacientovi | [Identita pacienta](ConceptMap-subject2FHIR-cz.html) |
| Souhlas | [Opakované použití dat](ConceptMap-ConsentReuseData2FHIR-cz-digovo.html) |
| Diagnóza | [Diagnóza vzácného onemocnění](ConceptMap-LogRareDiseaseDiagnosisCz2DIGOVO.html) |
| Anamnéza | [Anamnéza onemocnění](ConceptMap-PatientHistory2FHIR-cz-digovo.html) |
| Rodinná anamnéza | [Rodinní příslušníci](ConceptMap-familyAncestors2FHIR-cz.html) |
| Poskytnutá péče | [Zdravotní péče](ConceptMap-map-LogHealthCareCz.html) |

Profil [Composition DIGOVO](StructureDefinition-cz-composition-digovo.html) zatím definuje čtyři sekce. Podmíněné povinnosti, významové rozpory datasetu a položky v řešení popisuje [přehled modelů](logical-models.html).
