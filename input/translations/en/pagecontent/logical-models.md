The DIGOVO dataset follows **RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx**, worksheet **Data Elements** (78 items). The [overall logical model](StructureDefinition-LogRareDiseaseDatasetCz.html) links all 12 sections to their individual models through their data types. Patient information contains subsections 2a and 2b.

### Numbering and navigation

Model numbers match source dataset sections **1–12**. Subsections **2a** and **2b** remain under patient information; individual items retain source numbers such as **3.7** or **2b.4**. The overall model covers all sections and has no section number. The same numbers appear in model titles and the artifact index.

Quick navigation:

- [Consent and identification (1–2b)](#souhlas-a-identifikace)
- [Clinical data (3–8)](#klinicke-udaje)
- [Care (9–10)](#pece)
- [Research and additional information (11–12)](#vyzkum-a-doplnujici-informace)
- [Items under review – currently invalid](#polozky-v-reseni)

### Dataset hierarchy

The [overall dataset model](StructureDefinition-LogRareDiseaseDatasetCz.html) links the models below. Open each section from the grouped overview.

```text
Rare disease dataset
├── 1. Consent / objection to data reuse
├── 2. Patient information
│   ├── 2a. Personal and demographic information
│   └── 2b. Foetal and maternal data
├── 3. Rare disease diagnosis
├── 4. Disease history
├── 5. Antenatal and perinatal data
├── 6. Family history
├── 7. Vital status
├── 8. Treatments
├── 9. Care pathway
├── 10. Care activities
├── 11. Research
└── 12. Useful information
```

### Section overview

<a id="souhlas-a-identifikace" name="souhlas-a-identifikace"> </a>

#### Consent and identification (1–2b)

| Dataset section and items | IG model | Alignment |
| --- | --- | --- |
| 1 (1.1) | [Consent](StructureDefinition-LogConsentReuseDataCz.html) | Four-state answer; the consent/objection inconsistency remains open. |
| 2 (2.1–2.2) | [Patient information](StructureDefinition-LogSubjectCz.html) | Identification, foetus flag and links to 2a and 2b. |
| 2a (2a.1–2a.9) | [Personal and demographic information](StructureDefinition-LogPersonalInformationCz.html) | Separate model for birth and current surnames, given name, birth details, sex at birth and residence. Combines the two source headings sharing number 2a. |
| 2b (2b.1–2b.11) | [Foetal and maternal data](StructureDefinition-LogFoetalDataCz.html) | New model covering all 11 items. A separate record is kept for each affected foetus. |

<a id="klinicke-udaje" name="klinicke-udaje"> </a>

#### Clinical data (3–8)

| Dataset section and items | IG model | Alignment |
| --- | --- | --- |
| 3 (3.1–3.7) | [Diagnosis](StructureDefinition-LogRareDiseaseDiagnosisCz.html) | Adds a text disease name; chromosomal anomaly 3.7 is UNDER REVIEW – CURRENTLY INVALID. ORPHAcode remains in the existing CodeableConcept element nazev to preserve mapping continuity. |
| 4 (4.1–4.8) | [Disease history](StructureDefinition-LogPatientHistoryCz.html) | Adds developmental periods and alternative date/age types. Clinical manifestations are required by the dataset. |
| 5 (5.1–5.8) | [Antenatal and perinatal data](StructureDefinition-LogPrenatalDataCz.html) | Preserves a separate model of eight items, distinct from foetal data 2b. |
| 6 (6.1–6.4) | [Family history](StructureDefinition-LogFamilyAncestorsCz.html) | Updates requirements and the four-state answer for an affected family member. Relationship depends on applicability. |
| 7 (7.1–7.3) | [Vital status](StructureDefinition-LogStateOfLiveCz.html) | Vital status 7.1 and cause of death 7.3 are UNDER REVIEW – CURRENTLY INVALID. The meaning of 7.2 remains open. |
| 8 (8.1–8.3) | [Treatments](StructureDefinition-LogTherapyCz.html) | Requires a treatment product and dosage; repeated treatment records are inside the model. |

<a id="pece" name="pece"> </a>

#### Care (9–10)

| Dataset section and items | IG model | Alignment |
| --- | --- | --- |
| 9 (9.1–9.9) | [Care pathway](StructureDefinition-LogCarePathwayCz.html) | Adds ERN membership and updates requirements for physicians, the centre and the inclusion date. The ERN name is required for members. |
| 10 (10.1–10.6) | [Care activities](StructureDefinition-LogHealthCareCz.html) | Requires the care date; repeated activities are inside the model. |

<a id="vyzkum-a-doplnujici-informace" name="vyzkum-a-doplnujici-informace"> </a>

#### Research and additional information (11–12)

| Dataset section and items | IG model | Alignment |
| --- | --- | --- |
| 11 (11.1–11.4) | [Research](StructureDefinition-LogResearchCz.html) | Four-state answers; 11.2 is required, the other items are optional. The meaning of 11.4 remains inconsistent. |
| 12 (12.1–12.3) | [Useful information](StructureDefinition-LogUsefulInfoCz.html) | Adds advance directives; retains the source distinction between EHR and EHDS Patient Summary requirements. |

<a id="polozky-v-reseni" name="polozky-v-reseni"> </a>

### Items under review – currently invalid

**UNDER REVIEW – CURRENTLY INVALID** identifies items highlighted in red in the source workbook. Their content remains in the models for discussion, but they are not currently valid requirements. Their data types, cardinalities and proposed requirements are working drafts. The same text label appears on the individual model elements, so its meaning does not depend on colour alone.

| Item | Name and model | Status | Source |
| --- | --- | --- | --- |
| 3.7 | [Chromosomal anomaly](StructureDefinition-LogRareDiseaseDiagnosisCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">UNDER REVIEW – CURRENTLY INVALID</span> | Data Elements, row 31 |
| 7.1 | [Vital status](StructureDefinition-LogStateOfLiveCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">UNDER REVIEW – CURRENTLY INVALID</span> | Data Elements, row 52 |
| 7.3 | [Cause of death](StructureDefinition-LogStateOfLiveCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">UNDER REVIEW – CURRENTLY INVALID</span> | Data Elements, row 54 |

This status applies only to these three items, not to the entire diagnosis or vital status section. Date of death 7.2 is not highlighted in red in the source.

### Requirements and item values

The source Mandatory? column describes items. Section cardinalities are a proposal for the EHR: sections containing required items are 1..1; optional sections 5 and 12 are 0..1. Section 7 remains in the draft hierarchy, which does not make its flagged items valid. Subsections 2a and 2b are structurally optional and depend on the foetus flag and clinical context. Required items within a subsection apply when that subsection is used; flagged invalid items impose no current requirement. Diagnoses, treatments and contacts repeat within their individual models. Strongly recommended items are not automatically required.

Four-state answers use the [shared value set](ValueSet-vs-yes-no-unknown-not-asked-digovo-cz.html), derived from HL7 Yes No Unknown NotAsked: Y (yes), N (no), ASKU (asked but unknown), NASK (not asked). Requiring a recorded answer does not require a positive answer.

### Open dataset questions

The following points need clarification before final approval:

- **1.1:** the English name and definition describe an objection, whereas the Czech name describes consent. The model retains the original Czech meaning; automatic answer inversion is not defined.
- **2, 2a and 2b:** applicability of a national patient identifier to a foetus and the exact branch rules, including an unknown foetus flag. For 2b.9, the mandatory flag conflicts with the availability condition in the Czech help text.
- **6.2:** the dataset requires a relationship without explicitly conditioning it on an affected family member. The model allows omission when not applicable.
- **7.2:** the English name refers to a death certificate link, whereas the Czech name and response type describe a date of death. The existing date representation is retained pending clarification.
- **11.4:** the English definition refers to a sample for molecular diagnosis; the Czech name refers to a sample in a biobank. The existing element is retained with an explicit note.
- **Conditionally required items:** gene, variant, chromosomal anomaly, death information and ERN name have applicability requirements in their definitions; these are not always machine derivable. Unknown dates, non-applicability and cases without treatment need implementation rules. Not all item-level terminology bindings are complete. Red-highlighted items remain invalid despite their draft requirements.

### Relationship to implementation profiles

Existing model extensions, such as CPMS, biological methods and the last modification date, are retained. Logical models describe dataset content. CZ_Composition_Digovo still has four named sections; full mapping to exchangeable FHIR resources is a separate step. Identity and consent mappings reflect the new structure and mark ambiguous transformations as conceptual relationships.
