Logical: LogCzRareDiseaseDiagnosis
Id: LogRareDiseaseDiagnosisCz
Title: "Diagnóza vzácného onemocnění (cz)"
Description: """Záznam diagnózy vzácného onemocnění včetně klasifikace, potvrzovací metody a genetických údajů."""

* diagnozaVzacnehoOnemocneni 1..* Base "Diagnóza vzácného onemocnění" """Diagnóza, pro kterou je pacient registrován u zadávajícího pracoviště. Pokud má pacient více vzácných onemocnění, lze na stejná administrativní data navázat více formulářů."""
  * nazev 1..1 CodeableConcept "Název onemocnění (diagnózy)" """Diagnóza dle orphacode. Může být uvedeno více hodnot, pokud se vztahují k více diagnózám. Included in CDE: Yes."""
    * ^binding.strength = #preferred
    * ^binding.description = "Použít kódování dle orphacode"
  * aktualniStav 0..1 CodeableConcept "Aktuální stav diagnózy" """Stav diagnózy – Ongoing, Likely, Confirmed nebo Unknown."""
    * ^binding.strength = #example
  * metodaPotvrzeni 0..* CodeableConcept "Metoda potvrzení diagnózy" """Způsob potvrzení diagnózy: Clinical, Genetic, Biochemical, Biological, Imaging, Functional Exploration, Pathological anatomy, Other. (dotaz na autory: definovat rozdíl mezi 'biochemical' a 'biological')."""
  * biologickaMetoda 0..* CodeableConcept "Biologická metoda použitá v diagnostice" """Metoda biologické diagnostiky: Chromosomal, APCA, Targeted Sequencing, New Generation Sequencing, Other, N/A."""
  * gen 0..1 CodeableConcept "Gen a mutace (pokud lze použít)" """Kód genu dle HGNC. Vyplňuje se pouze u geneticky podmíněného vzácného onemocnění."""
    * ^binding.strength = #preferred
    * ^binding.description = "Použít kódování HGNC"
  * genovaVarianta 0..1 CodeableConcept "Genová varianta (je-li relevantní)" """Kód genetické varianty dle HGVS. Vyplňuje se pouze u geneticky podmíněného onemocnění."""
    * ^binding.strength = #preferred
    * ^binding.description = "Použít kódování HGVS"
  * typOnemocneni 0..1 CodeableConcept "Sporadické nebo familiární onemocnění" """Označuje, zda je onemocnění sporadické nebo familiární. Možno použít i u onemocnění, kde není gen definován."""
  * nediagnostikovane 0..* BackboneElement "Nediagnostikované (undiagnosed) onemocnění" """Používá se, pokud nelze onemocnění klasifikovat konkrétní diagnózou. Termín podle CDE."""
    * fenotyp 0..* CodeableConcept "Fenotyp" """Fenotypické projevy dle HPO."""
    * genotyp 0..* CodeableConcept "Genotyp" """Genotyp dle HGVS."""
