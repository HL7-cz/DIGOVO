### DIGOVO – vzácná onemocnění

Tato implementační příručka popisuje datovou sadu DIGOVO a její reprezentaci pomocí HL7 FHIR R4 (4.0.1). Je určena pro dokumentaci pacientů se vzácnými onemocněními a výměnu souvisejících údajů.

Datová sada vychází z dokumentu **RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx** a obsahuje 12 hlavních sekcí, včetně samostatných podsekcí osobních údajů a údajů o plodu a matce. Modely jsou pracovní návrh.

### Orientace v příručce

- [Oblasti a obsah](scope-and-content.html): účel a rozsah datasetu.
- [Logický model – přehled a hierarchie](logical-models.html): číslované sekce 1–12 a podsekce 2a/2b.
- [Celkový logický model](StructureDefinition-LogRareDiseaseDatasetCz.html): vazby mezi dílčími modely.
- [Artefakty](artifacts.html): logické modely, profily, rozšíření a terminologie.
- [Jazyky a překlady](translationinfo.html): pravidla české a anglické verze.

Položky **3.7, 7.1 a 7.3** jsou označeny **V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ**. Jsou zachovány k projednání a nepředstavují platné požadavky.

Přepínač **CZ / EN** v navigaci otevře stejnou stránku v druhém jazyce.

### Závislosti

{% include dependency-table.xhtml %}

### Analýza verzí FHIR

{% include cross-version-analysis.xhtml %}

### Duševní vlastnictví

{% include ip-statements.xhtml %}
