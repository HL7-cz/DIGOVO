Instance: familyAncestors2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/digovo/ConceptMap/familyAncestors2FHIR-cz"
* name = "FamilyAncestors2FHIRCzDigovo"
* title = "DIGOVO Family Ancestors Model to FHIR RelatedPerson Map"
* status = #draft
* experimental = true
* description = """
Mapování logického modelu DIGOVO 'Rodinní předkové ve vztahu k VO' 
na FHIR profil CZ_RelatedPerson_RareDisease.
"""

//-----------------------------------------------------------
// Skupina mapování: Rodinní předkové
//-----------------------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogFamilyAncestorsCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-relatedperson-raredisease"

//-----------------------------------------------------------
// Základní objekt rodinného předka
//-----------------------------------------------------------
* group[=].element[+].code = #rodinniPredkove
* group[=].element[=].display = "Rodinní předkové relevantní k VO"
* group[=].element[=].target.code = #RelatedPerson
* group[=].element[=].target.display = "RelatedPerson (Rodinní předkové relevantní k VO – DIGOVO)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Celý záznam rodinných předků je reprezentován jako RelatedPerson profilovaný pro DIGOVO."

//-----------------------------------------------------------
// Postižený předek (propositus)
//-----------------------------------------------------------
* group[=].element[+].code = #postizenyPredek
* group[=].element[=].display = "Postižený předek (propositus)"
* group[=].element[=].target.code = #RelatedPerson.extension:affectedAncestor.valueCodeableConcept
* group[=].element[=].target.display = "Extension: CZ_Ext_AffectedAncestor (Yes / No / N/A)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Vyjadřuje, zda byl předek postižen vzácným onemocněním."

//-----------------------------------------------------------
// Identifikátor prvního postiženého předka
//-----------------------------------------------------------
* group[=].element[+].code = #identifikatorPostizenehoPredka
* group[=].element[=].display = "Identifikátor prvního postiženého předka"
* group[=].element[=].target.code = #RelatedPerson.identifier
* group[=].element[=].target.display = "Identifikátor osoby (rodinný předek)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Přímé mapování na RelatedPerson.identifier"

//-----------------------------------------------------------
// Rodičovský vztah k postiženému
//-----------------------------------------------------------
* group[=].element[+].code = #rodicovskyVztah
* group[=].element[=].display = "Rodičovský vztah k postiženému"
* group[=].element[=].target.code = #RelatedPerson.relationship
* group[=].element[=].target.display = "Rodičovský vztah (např. otec, matka, sourozenec)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapováno na standardní prvek RelatedPerson.relationship"

//-----------------------------------------------------------
// Konsanguinita
//-----------------------------------------------------------
* group[=].element[+].code = #konsanguinita
* group[=].element[=].display = "Konsanguinita"
* group[=].element[=].target.code = #RelatedPerson.extension:consanguinity.valueCodeableConcept
* group[=].element[=].target.display = "Extension: CZ_Ext_Consanguinity (Yes / No / Unknown)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Vyjadřuje, zda jsou rodiče pacienta pokrevně příbuzní."

//-----------------------------------------------------------
// Jiní relevantní předkové
//-----------------------------------------------------------
* group[=].element[+].code = #jiniRelevantniPredkove
* group[=].element[=].display = "Jiní relevantní předkové"
* group[=].element[=].target.code = #RelatedPerson.note.text
* group[=].element[=].target.display = "Poznámka nebo kód jiných relevantních předků"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Slouží pro záznam volného textu nebo kódovaného vztahu k jiným předkům."
