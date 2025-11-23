Profile: CZ_Procedure_HealthCare
Parent: Procedure
Id: cz-procedure-healthcare
Title: "Procedure (Zdravotní výkon / poskytnutá péče – DIGOVO)"
Description: """
Záznam o konkrétní poskytované zdravotní péči, výkonu nebo klinické intervenci
v rámci DIGOVO datasetu.  
Profil se používá pro popis typu poskytnuté péče (hospitalizace, ambulantní vyšetření, 
multidisciplinární konzilium, telemedicína apod.).
"""

//-----------------------------------------------------------
// Základní metadata
//-----------------------------------------------------------
* status 1..1
* status = #completed
* status ^short = "Stav záznamu – dokončená nebo ukončená procedura."

* subject 1..1
* subject only Reference(CZ_PatientCore)
* subject ^short = "Pacient, kterému byla péče poskytnuta."

* performed[x] 0..1
* performedDateTime ^short = "Datum provedení výkonu nebo poskytnutí péče."

* encounter 0..1
* encounter only Reference(CZ_Encounter)
* encounter ^short = "Setkání pacienta se zdravotnickým systémem (Encounter)."

* performer 0..*
* performer.actor only Reference(CZ_PractitionerCore)
* performer.onBehalfOf only Reference(CZ_OrganizationCore)
* performer ^short = "Zdravotnický pracovník nebo organizace, která výkon provedla."

* location 0..1
* location only Reference(CZ_LocationCore)
* location ^short = "Místo, kde byl výkon proveden (např. centrum VO)."

//-----------------------------------------------------------
// Kód výkonu / typu péče
//-----------------------------------------------------------
* code 1..1
* code from VsHealthCareProcedureTypeCz (preferred)
* code ^short = "Kód nebo typ poskytnuté péče (např. ambulantní vyšetření, hospitalizace, telemedicína)."
* code.coding.system 0..1
* code.coding.code 0..1
* code.coding.display 0..1

//-----------------------------------------------------------
// Důvod provedení / účel
//-----------------------------------------------------------
* reasonCode 0..*
* reasonCode from VsHealthCareGoalCz (preferred)
* reasonCode ^short = "Cíl poskytnuté péče (např. diagnóza, management, edukace, výzkum)."

//-----------------------------------------------------------
// Vazba na účast v CPMS
//-----------------------------------------------------------
* reasonReference 0..*
* reasonReference only Reference(CZ_Observation_CPMSParticipation)
* reasonReference ^short = "Odkaz na záznam o účasti v systému CPMS (Observation)."