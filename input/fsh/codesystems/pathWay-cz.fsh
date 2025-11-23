CodeSystem: CsCarePathwayEncounterTypeCz
Id: carepathway-encounter-type-cz
Title: "Typ kontaktu v klinické trajektorii (Care Pathway – DIGOVO)"
Description: """
Kódy pro klasifikaci typu klinického kontaktu nebo epizody péče v rámci projektu DIGOVO.
"""
* ^status = #active
* ^version = "1.0.0"
* ^publisher = "HL7 Czech Republic"
* ^caseSensitive = true
* ^content = #complete
* ^url = "https://hl7.cz/fhir/digovo/CodeSystem/carepathway-encounter-type-cz"

* #referral "Odeslání / doporučení pacienta"
* #specialized-intake "Přijetí do specializovaného centra"
* #consultation "Konziliární vyšetření / multidisciplinární konzilium"
* #telemedicine "Telemedicínské vyšetření"
* #transfer "Přenos péče mezi centry"
* #followup "Kontrolní / následná péče"