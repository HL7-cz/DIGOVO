Profile: CZ_Encounter_SpecializedCenter
Parent: Encounter
Id: cz-encounter-specialized-center
Title: "Encounter (Přijetí do specializovaného centra – DIGOVO)"
Description: """
Záznam o přijetí pacienta do specializovaného centra péče o vzácná onemocnění.
Součást klinické trajektorie pacienta v DIGOVO.
"""

* status 1..1
* status from http://hl7.org/fhir/ValueSet/encounter-status (required)
* class 1..1
* class = $v3-ActCode#AMB "Ambulatory"
* type 1..*
* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #408473003
* type.coding.display = "Encounter for specialized medical care"

* subject 1..1
* subject only Reference(CZ_PatientCore)

* period.start 1..1
* period.start ^short = "Datum přijetí pacienta do centra péče"

* serviceProvider 1..1
* serviceProvider only Reference(CZ_OrganizationCore)

* participant 0..*
* participant.type 0..1
* participant.type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant.type.coding.code = #PPRF
* participant.type.coding.display = "Primary performer"
* participant.individual only Reference(CZ_PractitionerRoleCore)

* location 0..1
* location.location only Reference(CZ_LocationCore)

* reasonReference 0..*
* reasonReference only Reference(CZ_ConditionRareDisease)

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Přijetí pacienta do specializovaného centra – DIGOVO</div>"
