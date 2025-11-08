Logical: LogCzUsefulInfo
Id: LogUsefulInfoCz
Title: "Užitečné informace o onemocnění a varování"
Description: """Logický model pro zachycení doplňujících informací o onemocnění, doporučeních a hlavních varováních důležitých pro péči o pacienta. Součástí může být i pacientský souhrn.
"""

* uzitecneInformace 0..1 BackboneElement "Užitečné informace" """Související informace pro zdravotníky a pacienty."""
  * informaceOOnemocneni 0..* url "Informace o onemocnění a doporučení" """Odkazy na validované informační zdroje – např. klinické doporučené postupy nebo informační materiály."""
  * hlavniVarovani 0..* string "Hlavní varování" """Důležitá klinická upozornění, např. alergie, rizika nebo jiná závažná sdělení. Součást pacientského souhrnu."""
