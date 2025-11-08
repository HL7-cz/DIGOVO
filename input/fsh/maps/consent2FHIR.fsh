Instance: ConsentReuseData2FHIR-cz-digovo
InstanceOf: ConceptMap
Usage: #definition
Title: "DIGOVO Consent Reuse Data Logical Model → FHIR Mapping"
Description: """
Mapování logického modelu DIGOVO 'Souhlas s opakovaným použitím dat' na FHIR profil CZ_Consent_ReuseData.
"""
* url = "https://hl7.cz/fhir/digovo/ConceptMap/consentReuseData2FHIR-cz-digovo"
* name = "ConsentReuseData2FHIRCzDigovo"
* status = #draft
* experimental = true
* publisher = "NCEZ"

//---------------------------------------------
// Skupina mapování
//---------------------------------------------
* group[+].source = "https://hl7.cz/fhir/digovo/StructureDefinition/LogConsentReuseDataCz"
* group[=].target = "https://hl7.cz/fhir/digovo/StructureDefinition/cz-consent-reuse-data"

//---------------------------------------------
// Souhlas s opakovaným použitím dat
//---------------------------------------------
* group[=].element[+].code = #souhlasOpakovanePouzitiDat
* group[=].element[=].display = "Souhlas pacienta/zákonného zástupce s opakovaným použitím dat"
* group[=].element[=].target.code = #Consent.provision.type
* group[=].element[=].target.display = "Souhlas (Yes/No)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapováno na Consent.provision.type – hodnoty z VsConsentReuseTypeCz (Y/N)."
