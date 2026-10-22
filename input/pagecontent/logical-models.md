Datová sada DIGOVO je členěna podle souboru **RD_Data_Elements_CZ_EHR_VFN_16_9_VS.xlsx**, list **Data Elements** (78 položek). [Nadřazený logický model](StructureDefinition-LogRareDiseaseDatasetCz.html) propojuje všech 12 sekcí pomocí datových typů s dílčími modely. Informace o pacientovi obsahují podsekce 2a a 2b.

### Číslování a orientace

Čísla modelů odpovídají sekcím zdrojového datasetu **1–12**. Podsekce **2a** a **2b** zůstávají pod informacemi o pacientovi; položky používají čísla zdroje, např. **3.7** nebo **2b.4**. Celkový model zastřešuje všechny sekce a nemá vlastní číslo sekce. Stejná čísla jsou uvedena v názvech jednotlivých modelů, takže se zobrazí i v katalogu artefaktů.

Rychlá navigace:

- [Souhlas a identifikace (1–2b)](#souhlas-a-identifikace)
- [Klinické údaje (3–8)](#klinicke-udaje)
- [Péče (9–10)](#pece)
- [Výzkum a doplňující informace (11–12)](#vyzkum-a-doplnujici-informace)
- [Položky v řešení – aktuálně neplatné](#polozky-v-reseni)

### Hierarchie datasetu

[Celkový logický model datové sady](StructureDefinition-LogRareDiseaseDatasetCz.html) propojuje níže uvedené modely; jednotlivé sekce lze otevřít z tematických přehledů.

```text
Datová sada vzácných onemocnění
├── 1. Souhlas / námitka proti opakovanému použití dat
├── 2. Informace o pacientovi
│   ├── 2a. Osobní a demografické údaje
│   └── 2b. Údaje o plodu a matce
├── 3. Diagnóza vzácného onemocnění
├── 4. Anamnéza onemocnění
├── 5. Prenatální a perinatální údaje
├── 6. Rodinná anamnéza
├── 7. Životní stav
├── 8. Léčba
├── 9. Trajektorie péče
├── 10. Poskytnutá péče
├── 11. Výzkum
└── 12. Užitečné informace
```

### Přehled sekcí

<a id="souhlas-a-identifikace" name="souhlas-a-identifikace"> </a>

#### Souhlas a identifikace (1–2b)

| Sekce a položky datasetu | Dílčí model v IG | Zapracování |
| --- | --- | --- |
| 1 (1.1) | [Souhlas](StructureDefinition-LogConsentReuseDataCz.html) | Čtyřstavová odpověď; rozpor souhlas/námitka je označen k vyjasnění. |
| 2 (2.1–2.2) | [Informace o pacientovi](StructureDefinition-LogSubjectCz.html) | Identifikace, příznak plodu a propojení podsekcí 2a a 2b. |
| 2a (2a.1–2a.9) | [Osobní a demografické údaje](StructureDefinition-LogPersonalInformationCz.html) | Samostatný model: rodné a aktuální příjmení, jméno, narození, pohlaví při narození a pobyt. Osobní a demografické údaje ze dvou názvů se shodným číslem 2a jsou sloučeny. |
| 2b (2b.1–2b.11) | [Údaje o plodu a matce](StructureDefinition-LogFoetalDataCz.html) | Nový model všech 11 položek. Záznam pro každý postižený plod samostatně. |

<a id="klinicke-udaje" name="klinicke-udaje"> </a>

#### Klinické údaje (3–8)

| Sekce a položky datasetu | Dílčí model v IG | Zapracování |
| --- | --- | --- |
| 3 (3.1–3.7) | [Diagnóza](StructureDefinition-LogRareDiseaseDiagnosisCz.html) | Doplněn textový název diagnózy; chromozomální anomálie 3.7 je V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÁ. ORPHAkód zůstává v původním prvku nazev typu CodeableConcept pro návaznost stávajících map. |
| 4 (4.1–4.8) | [Anamnéza](StructureDefinition-LogPatientHistoryCz.html) | Doplněna vývojová období; datum nebo věk mají odpovídající alternativní typy. Klinické manifestace jsou povinné dle datasetu. |
| 5 (5.1–5.8) | [Prenatální a perinatální údaje](StructureDefinition-LogPrenatalDataCz.html) | Zachován samostatný model osmi položek. Nejde o údaje o plodu 2b. |
| 6 (6.1–6.4) | [Rodinná anamnéza](StructureDefinition-LogFamilyAncestorsCz.html) | Upraveny povinnosti a čtyřstavová odpověď o postiženém členu rodiny; vztah je podmíněný jeho relevancí. |
| 7 (7.1–7.3) | [Životní stav](StructureDefinition-LogStateOfLiveCz.html) | Stav života 7.1 a příčina úmrtí 7.3 jsou V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ. Význam 7.2 zůstává označen k vyjasnění. |
| 8 (8.1–8.3) | [Léčba](StructureDefinition-LogTherapyCz.html) | Povinný léčebný přípravek a dávkování; opakování záznamů uvnitř modelu. |

<a id="pece" name="pece"> </a>

#### Péče (9–10)

| Sekce a položky datasetu | Dílčí model v IG | Zapracování |
| --- | --- | --- |
| 9 (9.1–9.9) | [Trajektorie péče](StructureDefinition-LogCarePathwayCz.html) | Doplněno členství centra v ERN, upravena povinnost lékařů, centra a data přijetí; název ERN se vyžaduje při členství. |
| 10 (10.1–10.6) | [Poskytnutá péče](StructureDefinition-LogHealthCareCz.html) | Povinné datum ošetření; opakované záznamy péče uvnitř modelu. |

<a id="vyzkum-a-doplnujici-informace" name="vyzkum-a-doplnujici-informace"> </a>

#### Výzkum a doplňující informace (11–12)

| Sekce a položky datasetu | Dílčí model v IG | Zapracování |
| --- | --- | --- |
| 11 (11.1–11.4) | [Výzkum](StructureDefinition-LogResearchCz.html) | Čtyřstavové odpovědi; 11.2 povinná, ostatní položky volitelné. Rozpor významu 11.4 je označen. |
| 12 (12.1–12.3) | [Užitečné informace](StructureDefinition-LogUsefulInfoCz.html) | Doplněna dříve vyslovená přání; zohledněn rozdíl mezi EHR a EHDS Patient Summary ve zdroji. |

<a id="polozky-v-reseni" name="polozky-v-reseni"> </a>

### Položky v řešení – aktuálně neplatné

**V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ** označuje položky vyznačené červeně ve zdrojovém Excelu. Jejich obsah zůstává v modelu pro projednání, ale nejsou součástí aktuálně platných požadavků. Jejich datové typy, kardinality a případná povinnost jsou pouze pracovní návrh. Stejný textový štítek je uveden přímo u příslušných prvků logických modelů; význam tedy nezávisí pouze na barvě.

| Položka | Název a model | Stav | Zdroj |
| --- | --- | --- | --- |
| 3.7 | [Chromozomální anomálie](StructureDefinition-LogRareDiseaseDiagnosisCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ</span> | Data Elements, řádek 31 |
| 7.1 | [Stav života](StructureDefinition-LogStateOfLiveCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ</span> | Data Elements, řádek 52 |
| 7.3 | [Příčina úmrtí](StructureDefinition-LogStateOfLiveCz.html) | <span style="color: #9c0006; background-color: #ffc7ce;">V ŘEŠENÍ – AKTUÁLNĚ NEPLATNÉ</span> | Data Elements, řádek 54 |

Označení se vztahuje k těmto třem položkám, nikoli k celé sekci diagnózy nebo životního stavu. Datum úmrtí 7.2 není ve zdrojovém dokumentu červeně označeno.

### Povinnost a hodnoty položek

Povinnost ve sloupci Mandatory? se vztahuje k položkám. Kardinality sekcí představují návrh pro EHR: sekce obsahující povinné položky jsou 1..1, volitelné sekce 5 a 12 jsou 0..1. Sekce 7 je ponechána v pracovní hierarchii, její označené položky tím nezískávají platnost. Podsekce 2a a 2b jsou strukturálně volitelné a používají se podle příznaku plodu a klinického kontextu. Povinné položky uvnitř podsekce se uplatní při jejím použití; označené neplatné položky nepředstavují aktuální povinnost. Opakování diagnóz, terapií a kontaktů zůstává uvnitř dílčích modelů. Silně doporučené položky nejsou automaticky povinné.

Čtyřstavové odpovědi používají [společnou sadu hodnot](ValueSet-vs-yes-no-unknown-not-asked-digovo-cz.html) odvozenou z HL7 Yes No Unknown NotAsked: Y (ano), N (ne), ASKU (neznámé po dotazu), NASK (nezjišťováno). Povinný záznam odpovědi neznamená povinnost kladné odpovědi.

### Otevřené otázky datasetu

Před finálním schválením datasetu je nutné dořešit:

- **1.1:** anglický název a definice popisují námitku, český název souhlas. Model zachovává původní český význam; automatická inverze odpovědi není definována.
- **2, 2a a 2b:** použitelnost národního identifikátoru pacienta u plodu a přesné podmínky větví, včetně neznámého příznaku plodu. U 2b.9 je povinnost v rozporu s podmínkou dostupnosti v české nápovědě.
- **6.2:** dataset označuje vztah za povinný i bez výslovné podmínky existence postiženého člena. V modelu je vztah volitelný při nerelevanci.
- **7.2:** anglický název zmiňuje odkaz na úmrtní list, český název a typ odpovědi datum úmrtí. Zachováno datum dle české části a dosavadního modelu.
- **11.4:** anglická definice znamená vzorek pro molekulární diagnostiku, český název vzorek v biobance. Původní prvek je zachován s upozorněním na rozpor.
- **Podmíněně povinné údaje:** gen, varianta, chromozomální anomálie, údaje o úmrtí a název ERN mají povinnost popsanou v definici; relevance není vždy strojově odvoditelná. Pro neznámé datum, nepoužitelnost a případy bez léčby je nutné dopracovat implementační pravidla. Konkrétní terminologické vazby pro všechny položky nejsou touto úpravou dokončeny.

### Návaznost na implementační profily

Původní rozšíření modelů (např. CPMS, biologická metoda, datum uložení) jsou zachována. Logické modely vyjadřují obsah datasetu; profil CZ_Composition_Digovo má nadále čtyři pojmenované sekce a plné mapování datasetu na výměnné FHIR zdroje je samostatný krok. Mapování identity a souhlasu je aktualizováno podle změněné struktury a označuje nejednoznačné převody jako koncepční vazby.
