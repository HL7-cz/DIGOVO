Profile: PrenatalPerinatalSummaryCz
Parent: Observation
Id: PrenatalPerinatalSummaryCz
Title: "Prenatalni a perinatalni souhrn (CZ)"
Description: "Souhrnné prenatální a perinatální údaje relevantní pro projekt DIGOVO."

//------------------------------------------------------------------
// ZÁKLADNÍ METADATA OBSERVATION
//------------------------------------------------------------------
* status 1..1 MS
* code 1..1 MS
* code = $snomed#45323006 "Prenatal finding (finding)"
  * ^short = "Klinické zjištění týkající se prenatálních/perinatálních údajů."
  * ^definition = "Tato Observation zachycuje shrnuté prenatální a perinatální údaje pacienta."

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Pacient, ke kterému se údaje vztahují."
* effective[x] 0..1
  * ^short = "Časové období, kdy byly informace relevantní."

// Souhrn nemá hodnotu na úrovni Observation — pouze komponenty
* value[x] 0..0
  * ^short = "Hodnota se nevyužívá — použití komponent."
  * ^definition = "Klinická data jsou reprezentována komponentami."

//------------------------------------------------------------------
// SLICING komponent
//------------------------------------------------------------------
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

//------------------------------------------------------------------
// 1️⃣ Prenatální malformace
//------------------------------------------------------------------
* component contains prenatalniMalformace 0..1

* component[prenatalniMalformace].code = $DIGOVO#malformationSingle "Prenatálně zjištěná malformace"
* component[prenatalniMalformace].valueCodeableConcept 0..1
* component[prenatalniMalformace].valueCodeableConcept from PrenatalMalformationCzVS (required)

* component[prenatalniMalformace] ^short = "Typ prenatálně zjištěné malformace."
* component[prenatalniMalformace] ^definition = """
Prenatálně identifikované strukturální malformace.
Profil se používá jako klasifikace výsledku prenatálního vyšetření:
- žádná
- jednotlivá
- vícečetná.
"""

//------------------------------------------------------------------
// 2️⃣ Lékařsky asistovaná reprodukce
//------------------------------------------------------------------
* component contains lekarAssReprodukce 0..1

* component[lekarAssReprodukce].code = $DIGOVO#reproductionYes "Lékařsky asistovaná reprodukce"
* component[lekarAssReprodukce].valueCodeableConcept 0..1
* component[lekarAssReprodukce].valueCodeableConcept from AssistedReproductionCzVS (required)

* component[lekarAssReprodukce] ^short = "Zda bylo těhotenství výsledkem asistované reprodukce."
* component[lekarAssReprodukce] ^definition = """
Příznak použití metod asistované reprodukce (např. IVF, ICSI).
Výběr: Ano / Ne / N/A.
"""

//------------------------------------------------------------------
// 3️⃣ Vícečetné těhotenství
//------------------------------------------------------------------
* component contains vicecetneTehotenstvi 0..1

* component[vicecetneTehotenstvi].code = $DIGOVO#multiplePregnancy "Vícečetné těhotenství"
* component[vicecetneTehotenstvi].valueBoolean 0..1

* component[vicecetneTehotenstvi] ^short = "Vícečetné těhotenství (boolean)."
* component[vicecetneTehotenstvi] ^definition = """
Zda se jedná o vícečetné těhotenství. True — vícečetné, False — jednoplodové.
"""

//------------------------------------------------------------------
// 4️⃣ Foetopatologie
//------------------------------------------------------------------
* component contains foetopatologie 0..1

* component[foetopatologie].code = $DIGOVO#foetopathologyYes "Foetopatologie"
* component[foetopatologie].valueBoolean 0..1

* component[foetopatologie] ^short = "Přítomnost foetopatologického nálezu."
* component[foetopatologie] ^definition = """
Zda byla při prenatálním vyšetření potvrzena foetopatologie
(na základě ultrazvuku, genetických či laboratorních metod).
"""
