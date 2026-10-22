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
* group[=].element[=].target.equivalence = #relatedto
* group[=].element[=].target.comment = "Pouze koncepční vazba. Čtyřstavovou odpověď nelze přímo převést na permit/deny v Consent.provision.type. Unknown a Not Asked vyžadují vlastní reprezentaci a rozpor souhlas/námitka musí být před transformací vyjasněn."
