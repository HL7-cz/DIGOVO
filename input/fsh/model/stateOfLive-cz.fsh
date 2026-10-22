Logical: LogCzStateOfLive
Id: LogStateOfLiveCz
Title: "7. Životní stav"
Description: """Logický model pro záznam životního stavu pacienta ve vztahu k vzácnému onemocnění."""

* stavZivota 1..1 CodeableConcept "[V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ] 7.1 Stav života" """V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ. Položka je ve zdrojovém Excelu označena červeně a není součástí aktuálně platných požadavků. Pracovní návrh zachycuje poslední známý nebo aktuální životní stav pacienta. Zdroj navrhuje Alive / Deceased / Unknown; původní model obsahoval také Lost to follow up / Opted-out. Číselník, datový typ a kardinalita jsou ponechány k projednání."""
* stavZivota ^comment = "Stav podle červeného označení na listu Data Elements, řádek 52, položka 7.1. Do vyřešení se nepovažuje za platnou položku datasetu."
* datumUmrti 0..1 date "Datum úmrtí pacienta" """Datum úmrtí pacienta (formát dd/mm/yyyy).
Tento údaj se vyplňuje pouze, pokud je stav života = Deceased. 
Možný zdroj dat: NIS. Položka 7.2 má ve zdroji anglický název Link to Death Certificate, ale český název a odpověď znamenají datum úmrtí; model zachovává český význam do vyjasnění."""
* pricinaUmrti 0..* CodeableConcept "[V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ] 7.3 Příčina úmrtí" """V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ. Položka je ve zdrojovém Excelu označena červeně a není součástí aktuálně platných požadavků. Pracovní návrh zachycuje příčinu úmrtí zemřelého pacienta; zdroj navrhuje povinnost při relevanci. Datový typ a kardinalita jsou ponechány pouze k projednání."""
* pricinaUmrti ^comment = "Stav podle červeného označení na listu Data Elements, řádek 54, položka 7.3. Do vyřešení se nepovažuje za platnou položku datasetu."

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Patient vital status in the context of rare disease. Items 7.1 and 7.3 are under review and currently invalid."
