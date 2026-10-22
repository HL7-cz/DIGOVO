Instance: subject2FHIR-cz
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/digovo/ConceptMap/subject2FHIR-cz-digovo"
* name = "Subject2FHIRCzDigovo"
* title = "DIGOVO Subject Model to CZ Core Patient Map"
* status = #draft
* experimental = true
* description = """Mapování logického modelu DIGOVO 'Informace o subjektu - pacient' na FHIR Patient podle českého národního profilu CZ Core Patient."""

// Skupina mapování Patient
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogSubjectCz"
* group[=].target = "https://hl7.cz/fhir/core/StructureDefinition/cz-core-patient"

// ------------------------------
// Identifikace pacienta
// ------------------------------
* group[=].element[+].code = #identifikator
* group[=].element[=].display = "Identifikátor pacienta"
* group[=].element[=].target.code = #Patient.identifier
* group[=].element[=].target.display = "Identifikátor pacienta (NIS ID, EU RD ID)"
* group[=].element[=].target.equivalence = #equal

// ------------------------------
// Osobní údaje
// ------------------------------
* group[=].element[+].code = #osobniADemografickeUdaje.jmeno
* group[=].element[=].display = "Jméno pacienta"
* group[=].element[=].target.code = #Patient.name.given
* group[=].element[=].target.display = "Given name"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #osobniADemografickeUdaje.prijmeni
* group[=].element[=].display = "Příjmení pacienta"
* group[=].element[=].target.code = #Patient.name.family
* group[=].element[=].target.display = "Family name"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #osobniADemografickeUdaje.datumNarozeni
* group[=].element[=].display = "Datum narození"
* group[=].element[=].target.code = #Patient.birthDate
* group[=].element[=].target.display = "Date of birth"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #osobniADemografickeUdaje.pohlaviPriNarozeni
* group[=].element[=].display = "Pohlaví"
* group[=].element[=].target.code = #Patient.gender
* group[=].element[=].target.display = "Gender"
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Pohlaví při narození není obecně totožné s administrativním Patient.gender. Přesná reprezentace vyžaduje implementační profil."

// ------------------------------
// Země a místo narození
// ------------------------------
* group[=].element[+].code = #osobniADemografickeUdaje.zemeNarozeni
* group[=].element[=].display = "Země narození"
* group[=].element[=].target.code = #Patient.extension:birthPlace.valueAddress.country
* group[=].element[=].target.display = "Country of birth"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #osobniADemografickeUdaje.mistoNarozeni
* group[=].element[=].display = "Místo narození"
* group[=].element[=].target.code = #Patient.extension:birthPlace.valueAddress.city
* group[=].element[=].target.display = "Place of birth (city)"
* group[=].element[=].target.equivalence = #equivalent

// ------------------------------
// Trvalý pobyt
// ------------------------------
* group[=].element[+].code = #osobniADemografickeUdaje
* group[=].element[=].display = "Trvalý pobyt"
* group[=].element[=].target.code = #Patient.address
* group[=].element[=].target.display = "Patient address (home)"
* group[=].element[=].target.equivalence = #relatedto

* group[=].element[+].code = #osobniADemografickeUdaje.zemePobytu
* group[=].element[=].display = "Země trvalého pobytu"
* group[=].element[=].target.code = #Patient.address.country
* group[=].element[=].target.display = "Country (ISO3166)"
* group[=].element[=].target.equivalence = #equal

* group[=].element[+].code = #osobniADemografickeUdaje.mistoPobytu
* group[=].element[=].display = "Místo trvalého pobytu"
* group[=].element[=].target.code = #Patient.address.city
* group[=].element[=].target.display = "City of permanent residence"
* group[=].element[=].target.equivalence = #equal
