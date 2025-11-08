RuleSet: SectionCommonRules
* section.title 1..
* section.code 1..
* section.code only $CodeableConcept-uv-ips

RuleSet: SectionComRules (short, def, code)
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* ^extension[0].valueString = "Section"
* ^short = "{short}"
* ^definition = "{def}"
* title 1..
* code 1..
* code = {code}
* text 1..
* text only Narrative
* section.section ..0


