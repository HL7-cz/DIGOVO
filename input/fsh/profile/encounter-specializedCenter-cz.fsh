Profile: CZ_Encounter_SpecializedCenter
Parent: CZ_Encounter
Id: CZ-Encounter-SpecializedCenter
Title: "Encounter (Přijetí do specializovaného centra – DIGOVO)"
Description: """
Záznam o přijetí pacienta do specializovaného centra péče o vzácné onemocnění.
Profil pokrývá údaje o datu přijetí, doporučení, a organizaci, která pacienta přijala.
Odpovídá části 'Care Pathway' logického modelu DIGOVO (LogCzCarePathway).
"""

//-----------------------------------------------------------
// Základní metadata
//-----------------------------------------------------------
* status 1..1
* status = #finished
* status ^short = "Dokončený záznam o přijetí do centra"

* class 1..1
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #IMP
* class.display = "Inpatient encounter"
* class ^short = "Typ setkání – přijetí do specializovaného centra (inpatient)"

* type 0..*
* type from VsCarePathwayEncounterTypeCz (preferred)
* type ^short = "Typ klinické trajektorie (např. doporučení, konzilium, přijetí do centra)"


//-----------------------------------------------------------
// Pacient
//-----------------------------------------------------------
* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "Pacient, který byl přijat do centra"


//-----------------------------------------------------------
// Datum doporučení / přijetí
//-----------------------------------------------------------
* period.start 1..1
* period.start ^short = "Datum přijetí pacienta do specializovaného centra"
* period.start ^definition = "Datum, kdy byl pacient oficiálně přijat do specializovaného centra péče o vzácné onemocnění."

* period.end 0..1
* period.end ^short = "Datum ukončení pobytu ve specializovaném centru (pokud relevantní)"


//-----------------------------------------------------------
// Odesílající subjekt - Tady si nejsem jistý zda nevytvořit extension pro organizaci kdo doporučil místo toho referencuji přes diagnozu. Encounter ── reasonReference ──► Condition
//                                                                                                                                                                             └─ asserter ─► Organization / Practitioner

//-----------------------------------------------------------
* reasonReference 0..1
* reasonReference only Reference(cz-condition-raredisease)
* reasonReference ^short = "Odesílající subjekt navázaný na asserter přes profil cz-condition-raredisease (organizace, která pacienta doporučila do centra)"

//-----------------------------------------------------------
// Centrum péče o vzácná onemocnění
//-----------------------------------------------------------
* serviceProvider 1..1
* serviceProvider only Reference(CZ_OrganizationCore)
* serviceProvider ^short = "Centrum pro vzácná onemocnění, které pacienta přijalo"

//-----------------------------------------------------------
// Ošetřující lékaři
//-----------------------------------------------------------
* participant 0..*
* participant.individual only Reference(CZ_PractitionerRoleCore)
* participant ^short = "Ošetřující lékaři nebo členové multidisciplinárního týmu centra"
