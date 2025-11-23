Profile: CZ_Observation_CPMSParticipation
Parent: Observation
Id: cz-observation-cpms-participation
Title: "Observation (Účast pacienta v systému CPMS – DIGOVO)"
Description: """
Záznam o tom, zda je pacient zařazen do systému CPMS (Clinical Patient Management System).
Součást sekce Zdravotní péče v rámci DIGOVO.
"""

//-----------------------------------------------------------
// Metadata
//-----------------------------------------------------------
* status 1..1
* status = #final
* category 1..1
* category = $observation-category#social-history "Social History"

* code 1..1
* code = $loinc#96795-9 "Participation in clinical management system"
* code ^short = "Účast pacienta v systému CPMS (Clinical Patient Management System)"

//-----------------------------------------------------------
// Pacient a datum
//-----------------------------------------------------------
* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "Pacient, kterého se údaj týká"

* effectiveDateTime 0..1
* effectiveDateTime ^short = "Datum, kdy byl pacient přidán / potvrzen v CPMS"

//-----------------------------------------------------------
// Hodnota: Yes / No
//-----------------------------------------------------------
* value[x] only CodeableConcept
* valueCodeableConcept from $v2-0136 (preferred)
* valueCodeableConcept ^short = "Zda je pacient zařazen v systému CPMS (Yes/No/Unknown)"

//-----------------------------------------------------------
// Kontext a zdroj
//-----------------------------------------------------------
* performer 0..1
* performer only Reference(CZ_PractitionerCore)
* performer ^short = "Osoba nebo systém, který údaj zadal"

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Účast pacienta v systému CPMS</div>"
