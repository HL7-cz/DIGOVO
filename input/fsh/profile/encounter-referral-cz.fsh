Profile: CZ_Encounter_Referral
Parent: CZ_Encounter
Id: cz-encounter-referral
Title: "Encounter (Odeslání pacienta – DIGOVO)"
Description: """
Záznam o odeslání nebo doporučení pacienta k dalšímu vyšetření či do specializovaného centra.
Vztahuje se k části klinické trajektorie pacienta v DIGOVO.
"""

* status 1..1
* status = #finished
* class 1..1
* class = $v3-ActCode#REF "Referral"
* type 1..1
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* type.coding.code = #REF
* type.coding.display = "Referral encounter"

* subject 1..1
* subject only Reference(CZ_PatientCore)

* period.start 0..1
* period.start ^short = "Datum doporučení pacienta k péči"

* participant 0..*
* participant.type 0..1
* participant.type.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ParticipationType"
* participant.type.coding.code = #REF
* participant.type.coding.display = "Referrer"
* participant.individual only Reference(CZ_PractitionerRoleCore)

* serviceProvider 1..1
* serviceProvider only Reference(CZ_OrganizationCore)

* reasonCode 0..*
* reasonCode ^short = "Důvod odeslání (např. podezření na vzácné onemocnění)"

* partOf 0..1
* partOf only Reference(CZ_Encounter_SpecializedCenter)

* location 0..1
* location.location only Reference(CZ_LocationCore)


