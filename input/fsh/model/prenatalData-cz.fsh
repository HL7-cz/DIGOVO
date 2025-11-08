Logical: LogCzPrenatalData
Id: LogPrenatalDataCz
Title: "Prenatální a perinatální data"
Description: """Logický model pro prenatální a perinatální údaje relevantní především u dětských pacientů."""

* prenatalniData 0..1 Base "Prenatální / perinatální data" """Údaje o prenatálním a perinatálním období. 
Používají se pouze, pokud jsou relevantní (yes/no). Pro dospělé pacienty se sekce nevyplňuje. 
Poznámka ze Scalesoft: pokud není relevantní, sekce zmizí celá."""
  * prenatalniMalformace 0..1 CodeableConcept "Prenatálně zjištěná malformace" """Informace o malformacích zjištěných prenatálně. Hodnoty: No / Unique / Multiple."""
  * lekarAssReprodukce 0..1 CodeableConcept "Lékařsky asistovaná reprodukce" """Zda bylo těhotenství výsledkem lékařsky asistované reprodukce. Hodnoty: Yes / No / N/A."""
  * gestacniVek 0..1 Quantity "Gestační věk při narození" """Gestační věk v týdnech (weeks), kdy došlo k narození. Hodnoty mohou obsahovat i možnost N/A."""
  * porodniVaha 0..1 Quantity "Porodní váha" """Porodní hmotnost v gramech (grams)."""
  * porodniDelka 0..1 Quantity "Porodní délka" """Porodní délka v centimetrech (centimetres)."""
  * obvodHlavy 0..1 Quantity "Obvod hlavy při narození" """Obvod hlavy v centimetrech (centimetres)."""
  * vicecetneTehotenstvi 0..1 boolean "Vícečetné těhotenství" """Zda se jednalo o vícečetné těhotenství. Hodnoty: Yes / No."""
  * foetopatologie 0..1 boolean "Foetopatologie" """Informace o zjištěné foetopatologii. Hodnoty: Yes / No."""
    