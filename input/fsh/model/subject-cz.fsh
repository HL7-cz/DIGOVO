Logical: LogCzSubject
Id: LogSubjectCz
Title: "Informace o subjektu - pacient"
Description: """Logický model pro informace o subjektu - pacientovi v souladu s českými národními požadavky."""

* pacient 1..1 Base "Informace o pacientovi" """Základní identifikace pacienta a demografické údaje."""
  * identifikator 1..* Identifier "Identifikátor pacienta" """Národní a/nebo mezinárodní identifikátor pacienta (např. NIS ID, EU RD ID)."""
  * jmeno 1..1 string "Jméno pacienta" """Křestní jméno pacienta."""
  * prijmeni 1..1 string "Příjmení pacienta" """Příjmení pacienta."""
  * datumNarozeni 1..1 date "Datum narození" """Datum narození pacienta."""
  * pohlavi 1..1 code "Pohlaví" """Pohlaví pacienta v době zadání (male, female, other, unknown)."""
  * zemeNarozeni 0..1 CodeableConcept "Země narození" """Kód země podle ISO3166."""
  * mistoNarozeni 0..1 string "Místo narození" """Textový popis nebo kód obce místa narození."""
* trvalyPobyt 1..1 Base "Trvalý pobyt" """Informace o trvalém pobytu pacienta."""
  * zeme 0..1 CodeableConcept "Země trvalého pobytu" """Kód země trvalého pobytu pacienta (Country Code). Údaj se obvykle přebírá z nemocničního informačního systému (NIS)."""
  * misto 0..1 CodeableConcept "Místo trvalého pobytu" """Kód města nebo obce trvalého pobytu pacienta (City Code). Údaj se přebírá z nemocničního informačního systému (NIS)."""