ValueSet: VsHgvsCodeCz
Id: vs-hgvs-code-cz
Title: "HGVS kódování genetických variant (DIGOVO)"
Description: """
Soubor kódů pro popis genetických variant dle standardu HGVS (Human Genome Variation Society).
Používá se v rámci profilu CZ_Observation_Genotype jako hodnota (`valueCodeableConcept`).
Hodnoty odpovídají záznamům genetických variant, např. c.76A>T, p.Glu6Val.
Zdrojem dat jsou HGVS zápisy, OMIM, ClinVar nebo interní registr variant.
"""
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "Národní centrum pro elektronické zdravotnictví (NCEZ)"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

* include codes from system $HGVS
  // Oficiální URI pro HGVS nomenklaturu – může být doplněno konkrétním zdrojem (např. ClinVar, LOVD, OMIM)
  // Pokud implementace používá lokální kódový systém, doplní se jako additional include

* include codes from  system $clinvar
  // ClinVar – doplňkový zdroj variant s HGVS zápisem

* include codes from system $omim
  // OMIM – volitelné mapování genových variant, pokud je registrováno pod OMIM ID

