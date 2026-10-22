### DIGOVO – rare diseases

This implementation guide describes the DIGOVO dataset and its representation using HL7 FHIR R4 (4.0.1). It supports documentation of patients with rare diseases and the exchange of related information.

The dataset follows **RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx** and contains 12 main sections, including separate subsections for personal information and foetal and maternal data. The models are working drafts.

### Finding information

- [Scope and content](scope-and-content.html): purpose and scope of the dataset.
- [Logical model overview and hierarchy](logical-models.html): numbered sections 1–12 and subsections 2a/2b.
- [Overall logical model](StructureDefinition-LogRareDiseaseDatasetCz.html): relationships between individual models.
- [Artifacts](artifacts.html): logical models, profiles, extensions and terminology.
- [Languages and translations](translationinfo.html): conventions for the Czech and English versions.

Items **3.7, 7.1 and 7.3** are labelled **UNDER REVIEW – CURRENTLY INVALID**. They are retained for discussion and are not valid requirements.

The **CZ / EN** navigation switch opens the same page in the other language.

### Dependencies

{% include dependency-table.xhtml %}

### FHIR cross-version analysis

{% include cross-version-analysis.xhtml %}

### Intellectual property

{% include ip-statements.xhtml %}
