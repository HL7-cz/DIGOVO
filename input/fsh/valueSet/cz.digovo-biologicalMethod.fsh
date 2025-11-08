ValueSet: VsBiologicalMethodCz
Id: vs-biological-method-cz
Title: "Biologické metody použité v diagnostice (DIGOVO)"
Description: """
Soubor metod biologické diagnostiky používaných při potvrzení diagnózy vzácného onemocnění.
Převzato z logického modelu DIGOVO a harmonizováno s ERDRI Common Data Elements.
"""
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* ^publisher = "NCEZ"
* ^jurisdiction = urn:iso:std:iso:3166#CZ "Czech Republic"

* include codes from system $biologicalMethod 

