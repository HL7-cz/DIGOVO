Profile: CZ_Consent_ReuseData
Parent: Consent
Id: cz-consent-reuse-data
Title: "Consent (Souhlas s opakovaným použitím dat – DIGOVO)"
Description: """
Záznam o souhlasu pacienta nebo zákonného zástupce s opakovaným použitím dat pacienta.
Používá se v rámci datasetu DIGOVO (část Souhlas).
"""

* status 1..1
* status = #active
* scope 1..1
* scope.coding.system = "http://terminology.hl7.org/CodeSystem/consentscope"
* scope.coding.code = #research
* category 1..1
* category.coding.system = "http://loinc.org"
* category.coding.code = #57016-8
* category.coding.display = "Consent for use of data"

* patient 1..1 
* patient only Reference(CZ_PatientCore)
* dateTime 0..1
* performer 0..1 
* performer only Reference(CZ_PractitionerRoleCore)

* provision 1..1
* provision.type 1..1
* provision.type from VsConsentCz (required)
* provision.type ^short = "Souhlas s opakovaným použitím dat (Yes/No)"

