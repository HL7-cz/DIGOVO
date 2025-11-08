Profile: CZ_Composition_Digovo
Parent: Composition
Id: cz-composition-digovo
Title: "Composition (DIGOVO – klinický dokument o vzácném onemocnění)"
Description: """
Hlavní klinický dokument DIGOVO pro vzácná onemocnění.
Zahrnuje sekce pro identifikaci pacienta, diagnózu, anamnézu, klinickou trajektorii, souhlas a další relevantní údaje.
"""

// -----------------------------------------------------------
// Základní metadata dokumentu
// -----------------------------------------------------------
* status 1..1
* status = #final

* type 1..1
* type.coding.system = "http://loinc.org"
* type.coding.code = #53576-5
* type.coding.display = "Rare disease patient summary"

* subject 1..1
* subject only Reference(CZ_PatientCore)

* date 1..1
* date ^short = "Datum vytvoření nebo poslední aktualizace dokumentu"

* author 1..*
* author only Reference(CZ_PractitionerRoleCore)
* author ^short = "Autor nebo zodpovědná osoba za dokument DIGOVO"

* title 1..1
* title = "Záznam o pacientovi se vzácným onemocněním (DIGOVO)"

* custodian 0..1
* custodian only Reference(CZ_OrganizationCore)
* custodian ^short = "Organizace odpovědná za uchovávání dokumentu"

// -----------------------------------------------------------
// Definice slicingu sekcí
// -----------------------------------------------------------
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

// -----------------------------------------------------------
// Sekce – Diagnóza vzácného onemocnění
// -----------------------------------------------------------
* section contains sectionDiagnosis 1..1
* section[sectionDiagnosis]
  * insert SectionComRules (
      Diagnóza vzácného onemocnění,
      Záznam diagnózy vzácného onemocnění s kódováním dle ORPHAcode,
      http://loinc.org#75326-9)
  * entry 1..
  * entry only Reference(CZ_ConditionRareDisease)
  * entry ^short = "Diagnóza vzácného onemocnění"
  * entry ^definition = "Diagnóza vzácného onemocnění dle ORPHAcode"

// -----------------------------------------------------------
// Sekce – Anamnéza
// -----------------------------------------------------------
* section contains sectionHistory 0..1
* section[sectionHistory]
  * insert SectionComRules (
      Anamnéza,
      Údaje o průběhu onemocnění jeho začátku dědičnosti a projevech,
      http://loinc.org#11348-0)
  * entry only Reference(
      CZ_Observation_PatientOnsetAge or
      CZ_Observation_HereditaryPattern or
      CZ_Observation_PhenotypicManifestation or
      CZ_Observation_FunctionalDisability or
      CZ_Procedure_Examination )
  * entry ^short = "Anamnéza pacienta"
  * entry ^definition = "Klinické a anamnestické údaje"

// -----------------------------------------------------------
// Sekce – Klinická trajektorie (Care Pathway)
// -----------------------------------------------------------
* section contains sectionCarePathway 0..1
* section[sectionCarePathway]
  * insert SectionComRules (
      Klinická trajektorie pacienta,
      Údaje o odesílajícím subjektu přijetí do centra a zapojených lékařích,
      http://loinc.org#55108-5)
  * entry only Reference(
      CZ_Encounter_Referral or
      CZ_Encounter_SpecializedCenter)
  * entry ^short = "Klinická trajektorie pacienta"
  * entry ^definition = "Záznam o postupu péče pacienta"

// -----------------------------------------------------------
// Sekce – Souhlas s opakovaným použitím dat
// -----------------------------------------------------------
* section contains sectionConsent 0..1
* section[sectionConsent]
  * insert SectionComRules (
      Souhlas s opakovaným použitím dat,
      Záznam o udělení nebo neudělení souhlasu pacienta se sekundárním využitím dat,
      http://loinc.org#57016-8)
  * entry only Reference(CZ_Consent_ReuseData)
  * entry ^short = "Souhlas s opakovaným použitím dat"
  * entry ^definition = "Záznam souhlasu pacienta"
