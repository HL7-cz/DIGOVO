Logical: LogCzFamilyAncestors
Id: LogFamilyAncestorsCz
Title: "Rodinní předkové ve vztahu k vzácnému onemocnění"
Description: """Logický model pro záznam informací o rodinných předcích ve vztahu k vzácnému onemocnění."""

* rodinniPredkove 0..1 Base "Rodinní předkové relevantní k VO" """Údaje o rodinných předcích, kteří mohou být relevantní pro vzácné onemocnění. 
Pokud nerelevantní (No), sekce se vůbec nerozbalí."""
  * postizenyPredek 0..1 CodeableConcept "Postižený předek (propositus)" """Zda byl některý z předků postižen vzácným onemocněním. Hodnoty: Yes / No / N/A."""
  * identifikatorPostizenehoPredka 0..1 Identifier "Identifikátor prvního postiženého předka" """Identifikátor prvního postiženého předka (ID code). 
V případě více postižených lze použít rozšíření (rodokmen). Pokud ID není známo nebo předek zemřel, použije se N/A."""
  * rodicovskyVztah 0..1 CodeableConcept "Rodičovský vztah k postiženému" """Popis vztahu mezi postiženým a předkem (např. otec, matka, sourozenec). Hodnoty: Yes / No / String."""
  * konsanguinita 0..1 CodeableConcept "Konsanguinita" """Informace o pokrevní příbuznosti mezi rodiči. Hodnoty: Yes / No / Unknown."""
  * jiniRelevantniPredkove 0..1 CodeableConcept "Jiní relevantní předkové" """Další rodinní příslušníci relevantní k onemocnění. 
Možné kódování: orphacode, ICD-10, ICD-11, SNOMED CT nebo N/A."""
