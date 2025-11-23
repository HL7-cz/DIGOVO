Extension: CZ_Ext_Consanguinity
Id: cz-ext-consanguinity
Title: "Konsanguinita (pokrevní příbuznost)"
Description: "Informace o pokrevní příbuznosti mezi rodiči."
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept from $v2-0136 (preferred)
* valueCodeableConcept ^short = "Pokrevní příbuznost (Yes/No/Unknown)"
