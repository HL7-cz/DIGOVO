Extension: CZ_Ext_AncestorCondition
Id: cz-ext-ancestor-condition
Title: "Diagnóza vzácného onemocnění předka"
Description: "Diagnóza vzácného onemocnění, které postihlo rodinného předka."
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* value[x] only CodeableConcept
* valueCodeableConcept from $orpha (preferred)
* valueCodeableConcept ^short = "Kód diagnózy dle ORPHAcode"