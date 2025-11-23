Extension: CZ_Ext_AffectedAncestor
Id: cz-ext-affected-ancestor
Title: "Postižený předek (Yes/No/N/A)"
Description: "Zda byl některý z rodinných předků postižen vzácným onemocněním."
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept from $v2-0136 (preferred)
* valueCodeableConcept ^short = "Yes / No / N/A"
