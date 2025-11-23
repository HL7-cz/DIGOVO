Profile: CZ_RelatedPerson_RareDisease
Parent: CZ_RelatedPersonCore
Id: cz-relatedperson-raredisease
Title: "RelatedPerson (Rodinní předkové relevantní k VO – DIGOVO)"
Description: """
Rozšíření profilu CZ_RelatedPersonCore pro záznam rodinných předků relevantních ke vzácným onemocněním.
Odpovídá logickému modelu LogCzFamilyAncestors.
"""
//-----------------------------------------------------------
// Základní metadata
//-----------------------------------------------------------
* active 1..1
* active = true
* patient 1..1
* patient only Reference(CZ_PatientCore)
* patient ^short = "Pacient, ke kterému se tento rodinný vztah váže"




//-----------------------------------------------------------
// Rodičovský vztah
//-----------------------------------------------------------
* relationship 1..1
* relationship from $relationshiptype (preferred)
* relationship ^short = "Rodičovský vztah k postiženému (např. otec, matka, sourozenec)"

//-----------------------------------------------------------
// Postižený předek (Yes/No/N/A)
//-----------------------------------------------------------
* extension contains
    CZ_Ext_AffectedAncestor named affectedAncestor 0..1
* extension[affectedAncestor].value[x] only CodeableConcept
* extension[affectedAncestor].valueCodeableConcept from $v2-0136 (preferred)
* extension[affectedAncestor].valueCodeableConcept ^short = "Zda byl předek postižen VO (Yes / No / N/A)"

//-----------------------------------------------------------
// Konsanguinita
//-----------------------------------------------------------
* extension contains
    CZ_Ext_Consanguinity named consanguinity 0..1
* extension[consanguinity].value[x] only CodeableConcept
* extension[consanguinity].valueCodeableConcept from $v2-0136 (preferred)
* extension[consanguinity].valueCodeableConcept ^short = "Pokrevní příbuznost mezi rodiči"

//-----------------------------------------------------------
// Diagnóza předka
//-----------------------------------------------------------
* extension contains
    CZ_Ext_AncestorCondition named ancestorCondition 0..1
* extension[ancestorCondition].value[x] only CodeableConcept
* extension[ancestorCondition].valueCodeableConcept from $orpha (preferred)
* extension[ancestorCondition].valueCodeableConcept ^short = "Diagnóza vzácného onemocnění (ORPHAcode)"

