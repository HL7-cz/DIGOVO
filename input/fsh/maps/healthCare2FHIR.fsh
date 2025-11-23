Instance: map-LogHealthCareCz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/digovo/ConceptMap/LogHealthCareCz"
* name = "LogHealthCareCzToFHIR"
* title = "DIGOVO Mapování: LogCzHealthCare → FHIR profily"
* status = #draft
* experimental = true
* description = """
Mapování logického modelu zdravotní péče (LogCzHealthCare) na FHIR profily DIGOVO a CZ Core.
"""

// ------------------------------------------------------
// Skupina: Zdravotní péče (Encounter + přidružené zdroje)
// ------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogHealthCareCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-encounter-specializedcenter"

// Zdravotní péče jako Encounter
* group[=].element[+].code = #zdravotniPece
* group[=].element[=].display = "Zdravotní péče"
* group[=].element[=].target.code = #Encounter
* group[=].element[=].target.display = "Záznam o poskytované zdravotní péči (CZ_Encounter_SpecializedCenter)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Hlavní záznam o poskytnuté péči reprezentován Encounterem."

// Datum ošetření
* group[=].element[+].code = #datumOsetreni
* group[=].element[=].display = "Datum ošetření"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = "Datum zahájení poskytované péče"
* group[=].element[=].target.equivalence = #equal

// Typ poskytnuté péče
* group[=].element[+].code = #poskytnutaPece
* group[=].element[=].display = "Typ poskytnuté péče"
* group[=].element[=].target.code = #Procedure.code
* group[=].element[=].target.display = "Kód typu výkonu nebo intervence (CZ_Procedure_HealthCare)"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Vykázaný výkon, hospitalizace, ambulantní vyšetření apod."

// Účast v CPMS
* group[=].element[+].code = #pacientVcpms
* group[=].element[=].display = "Pacient zařazen do CPMS"
* group[=].element[=].target.code = #Observation.valueCodeableConcept
* group[=].element[=].target.display = "Zařazení do CPMS (CZ_Observation_CPMSParticipation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Informace o účasti pacienta v systému CPMS (Yes/No)."

// Cíle poskytované péče
* group[=].element[+].code = #cilePece
* group[=].element[=].display = "Cíle poskytované péče"
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.display = "Cíle péče / důvody kontaktu"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Např. diagnóza, management, prenatální diagnostika, výzkum."

// Profese poskytovatelů
* group[=].element[+].code = #povolaniPecujicich
* group[=].element[=].display = "Povolání poskytovatelů péče"
* group[=].element[=].target.code = #PractitionerRole.code
* group[=].element[=].target.display = "Profese zdravotníka (CZ_PractitionerRoleCore)"
* group[=].element[=].target.equivalence = #equal

// Poskytující pracovník
* group[=].element[+].code = #poskytujiciPracovnik
* group[=].element[=].display = "Pracovník poskytující péči"
* group[=].element[=].target.code = #Practitioner.identifier
* group[=].element[=].target.display = "Identifikátor nebo jméno poskytovatele (CZ_PractitionerCore)"
* group[=].element[=].target.equivalence = #relatedto

// Centrum pro vzácná onemocnění
* group[=].element[+].code = #centrumProVzacnaOnemocneni
* group[=].element[=].display = "Centrum pro vzácná onemocnění"
* group[=].element[=].target.code = #Organization.identifier
* group[=].element[=].target.display = "Identifikátor centra (CZ_OrganizationCore)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Odpovídá specializovanému centru poskytujícímu péči."

// Umístění centra
* group[=].element[+].code = #umisteniCentra
* group[=].element[=].display = "Umístění centra"
* group[=].element[=].target.code = #Location.address
* group[=].element[=].target.display = "Lokalizace centra (CZ_LocationCore)"
* group[=].element[=].target.equivalence = #equal
