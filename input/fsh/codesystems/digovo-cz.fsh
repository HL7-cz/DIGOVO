CodeSystem: DIGOVO
Id: digovo
Title: "DIGOVO CodeSystem"
Description: "Kódy používané v projektu DIGOVO pro prenatální, perinatální a specializované klinické informace."
* ^status = #active
* ^content = #complete
* ^experimental = false
* ^caseSensitive = true
* ^url = "https://hl7.cz/fhir/digovo/CodeSystem/digovo"

// Prenatalni malformace
* #malformationNone "Bez prenatálně zjištěných malformací"
* #malformationSingle "Jednotlivá prenatální malformace"
* #malformationMultiple "Vícečetné prenatální malformace"

// Lékařsky asistovaná reprodukce
* #reproductionYes "Ano – těhotenství vzniklo asistovanou reprodukcí"
* #reproductionNo "Ne – těhotenství nevzniklo asistovanou reprodukcí"
* #reproductionNA "N/A – informace není dostupná / není aplikovatelné"