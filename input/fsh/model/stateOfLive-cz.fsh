Logical: LogCzStateOfLive
Id: LogStateOfLiveCz
Title: "Stav života"
Description: """Logický model pro záznam životního stavu pacienta ve vztahu k vzácnému onemocnění."""

* stavZivota 1..1 CodeableConcept "Stav života" """Informace o aktuálním životním stavu pacienta. 
Možné hodnoty: Alive / Deceased / Lost to follow up / Opted-out.
Hodnota 'Opted-out' přidána pro konformitu s CDE."""
* datumUmrti 0..1 date "Datum úmrtí pacienta" """Datum úmrtí pacienta (formát dd/mm/yyyy).
Tento údaj se vyplňuje pouze, pokud je stav života = Deceased. 
Možný zdroj dat: NIS."""