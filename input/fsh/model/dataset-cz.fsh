Logical: LogCzRareDiseaseDataset
Id: LogRareDiseaseDatasetCz
Title: "Datová sada vzácných onemocnění – celkový logický model"
Description: """Nadřazený logický model datasetu RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx (list Data Elements). Dvanáct sekcí je propojeno s dílčími modely jejich datovým typem. Model pacienta zahrnuje podsekce 2a a 2b. Kardinality sekcí představují návrh pro EHR; podmíněná povinnost a otevřené otázky zdroje jsou popsány na stránce logických modelů."""

* souhlas 1..1 LogCzConsentReuseData "1. Souhlas / námitka proti opakovanému použití dat" """Položka 1.1. Význam odpovědi vyžaduje vyjasnění rozporu mezi anglickou námitkou a českým souhlasem."""
* pacient 1..1 LogCzSubject "2. Informace o pacientovi" """Položky 2.1–2.2 a podsekce 2a (osobní a demografické údaje) a 2b (údaje o plodu a matce)."""
* diagnoza 1..1 LogCzRareDiseaseDiagnosis "3. Diagnóza vzácného onemocnění" """Položky 3.1–3.7; dílčí model umožňuje více diagnóz. Položka 3.7 je V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÁ a je zachována pouze jako pracovní návrh."""
* anamneza 1..1 LogCzPatientHistory "4. Anamnéza onemocnění" """Položky 4.1–4.8."""
* prenatalniAPerinatalniUdaje 0..1 LogCzPrenatalData "5. Prenatální a perinatální údaje" """Položky 5.1–5.8. Samostatná sekce odlišná od údajů o plodu 2b."""
* rodinnaAnamneza 1..1 LogCzFamilyAncestors "6. Rodinná anamnéza" """Položky 6.1–6.4."""
* stavZivota 1..1 LogCzStateOfLive "7. Životní stav" """Položky 7.1–7.3. Položky 7.1 a 7.3 jsou V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ a jsou zachovány pouze jako pracovní návrh. Položka 7.2 není ve zdroji červeně označena. Údaje o úmrtí jsou podmíněné relevancí."""
* lecba 1..1 LogCzTherapy "8. Léčba" """Položky 8.1–8.3; dílčí model umožňuje opakované záznamy terapie."""
* trajektoriePece 1..1 LogCzCarePathway "9. Trajektorie péče" """Položky 9.1–9.9."""
* poskytnutaPece 1..1 LogCzHealthCare "10. Poskytnutá péče" """Položky 10.1–10.6; dílčí model umožňuje opakované záznamy péče."""
* vyzkum 1..1 LogCzResearch "11. Výzkum" """Položky 11.1–11.4. Povinný záznam odpovědi neznamená povinnost udělit kladný souhlas."""
* uzitecneInformace 0..1 LogCzUsefulInfo "12. Užitečné informace" """Položky 12.1–12.3. Volitelné pro EHR; zdroj je označuje jako požadované pro EHDS Patient Summary."""

// English metadata; element translations are maintained in input/translations/en.
* ^description.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* ^description.extension[=].extension[0].url = "lang"
* ^description.extension[=].extension[0].valueCode = #en
* ^description.extension[=].extension[1].url = "content"
* ^description.extension[=].extension[1].valueString = "Overall logical model of RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx, worksheet Data Elements. Its twelve sections link to individual models by data type. Patient information includes 2a and 2b. Section cardinalities are an EHR proposal; conditional requirements and source inconsistencies are described on the logical model overview page."
