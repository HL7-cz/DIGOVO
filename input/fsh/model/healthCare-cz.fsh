Logical: LogCzHealthCare
Id: LogHealthCareCz
Title: "10. Poskytnutá péče"
Description:
"""Logický model pro zachycení údajů o zdravotní péči poskytnuté pacientovi, včetně typu intervence, účelu, zapojení do systémů jako CPMS, profese poskytovatelů a lokalizace centra péče. Vhodné primárně pro standardní dokumentaci; pro registry může být problematické kvůli variabilitě údajů."""

* zdravotniPece 1..* Base "Zdravotní péče" """Záznamy o jednotlivých případech poskytnuté péče pacientovi."""
  * datumOsetreni 1..1 date "Datum ošetření" """Datum, kdy byla péče poskytnuta. Opakovatelný záznam v rámci vícenásobných kontaktů."""
  * poskytnutaPece 0..* code "Typ poskytnuté péče" """Typ kontaktu/péče: hospitalizace, ambulantní vyšetření, multidisciplinární porada, telemedicína apod. Možno doplnit automatizovaně z NIS podle kódů výkonů."""
  * pacientVcpms 0..* boolean "Pacient zařazen do CPMS" """Zda je pacient zařazen v systému CPMS (Clinical Patient Management System)."""
  * cilePece 0..* code "Cíle poskytnuté péče" """Např. diagnóza, management onemocnění, prenatální diagnostika, edukace pacienta, výzkum apod."""
  * povolaniPecujicich 0..* code "Povolání poskytovatelů péče" """Profese zapojených poskytovatelů péče: lékař, psycholog, fyzioterapeut, dietolog, atd."""
  * poskytujiciPracovnik 0..* string "Pracovník poskytující péči" """Identifikátor (např. IČP) nebo jméno pracovníka. Možno automatizovat z NIS."""
  * centrumProVzacnaOnemocneni 0..1 string "Centrum pro vzácná onemocnění" """Identifikátor centra poskytujícího péči (např. IČP RD site)."""
  * umisteniCentra 0..1 CodeableConcept "Umístění centra" """Lokalizace centra: kód země/města podle standardu (např. ISO3166, LAU2)."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Care activities, including contact type, objectives, CPMS participation, provider professions and centre location. Primarily intended for clinical documentation; variable data may limit registry use."
