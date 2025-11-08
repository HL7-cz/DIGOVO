Logical: LogCzResearch
Id: LogResearchCz
Title: "Účast pacienta na výzkumu"
Description: """
Logický model pro zachycení údajů o účasti pacienta na výzkumu nebo studii včetně dostupnosti biologických vzorků a souhlasu s kontaktováním. Struktura odpovídá českým národním požadavkům a je v souladu s CDE.
"""
* vyzkum 0..* Base "Výzkumné aktivity" """Záznamy o účasti pacienta na výzkumu nebo studii, včetně dostupnosti biologických vzorků a souhlasu s kontaktováním."""
  * ucastNaVyzkumu 0..* boolean "Účast pacienta na výzkumu/studii" """Zda pacient participoval ve výzkumu nebo studii. Lze rozlišit observační/intervenční (rozšíření možné později)."""
  * souhlasKontaktVyzkum 1..* code "Souhlas s kontaktováním" """Zda pacient souhlasil s kontaktováním pro účely výzkumu. Hodnoty: Yes / No / Not Applicable / Not Known."""
  * biologickyVzorekKDispozici 1..* boolean "Biologický vzorek k dispozici" """Zda je biologický vzorek pacienta dostupný pro výzkumné účely."""
  * biologickyVzorekBiobanka 1..* string "Vzorek uložen v biobance" """Zda je vzorek uložen v biobance. Hodnoty: Yes (link) / No."""
