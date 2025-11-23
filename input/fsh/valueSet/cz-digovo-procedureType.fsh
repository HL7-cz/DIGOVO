ValueSet: VsHealthCareProcedureTypeCz
Id: vs-healthcare-procedure-type-cz
Title: "Typ poskytnuté péče (DIGOVO)"
Description: """
Seznam typů poskytované péče nebo zdravotního výkonu v rámci DIGOVO.
Používá se v `Procedure.code` pro rozlišení formy kontaktu – ambulantní, hospitalizace, konzilium, telemedicína apod.
"""
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"


* include codes from system $typCare

