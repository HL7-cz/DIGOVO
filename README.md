# Name of the use case

This is a draft publication by the Interoperability project Team. The continuous build is published in https://build.fhir.org/ig/hl7-cz/DIGOVO

## Changes and feedback
Feedback and issues about this IG can be submitted via the [issues](issues) page, and will be incorporated into subsequent releases. Current issues board is available in the [Project board](https://github.com/orgs/HL7-cz/projects/2).

## Czech and English publication

The primary authoring language is Czech (`cs`); English (`en`) is the additional language. The navigation displays **CZ / EN** and opens the corresponding page, retaining its section anchor. The Publisher generates language directories such as `cs/logical-models.html` and `en/logical-models.html`; the technical identifiers and canonical URLs remain unchanged.

- Czech narrative sources: `input/pagecontent/{page}.md`.
- English narrative translations: `input/translations/en/pagecontent/{page}.md`, using the same filenames and anchors.
- English translations of the 15 logical models: `input/translations/en/StructureDefinition-{id}.po`.
- English model descriptions use the standard primitive `translation` extension in their FSH sources; this supports metadata rendering in Publisher versions whose SD PO importer only handles titles and elements.
- Czech template labels: `ig-template/translations/stringsBase-cs.po` and `stringsArtifacts-cs.po`.
- Shared bilingual menu: `input/includes/menu.xml`. Do not also configure a SUSHI `menu` block.
- Language switcher: `ig-template/includes/fragment-language.html`, overriding the inherited `fhir2.base.template` fragment.

The menu follows the Czech national IG structure: **Home, Introduction, Functional, Implementation, About, Artifacts**, with labels translated into the selected language. Each page appears once; **Functional** contains one logical-model overview link. All menu and narrative links stay within the current language directory, and only the **CZ / EN** switch changes language. There are no `(cs)` / `(en)` menu pairs or separate `-cs` / `-en` page identities. Czech source texts and English translations remain separate authoring files for the same published pages. Dropdown toggles point to real pages rather than a missing `menu.html`, so Publisher link-check anchors do not create extra navigation rows. Desktop navigation layout is defined in `ig-template/content/assets/css/cz-core.css`.

When a model changes, keep PO source strings (`msgid`) exactly aligned with its current Czech text and retain the FHIR translation keys (`msgctxt`). Update the translated narrative page whenever its source changes. PO files belong directly in the language input folder; the top-level `translations/` directory is generated output, not the source of translations. The English definitions of dataset items were prepared from the bilingual source workbook, with explicit notes preserving source inconsistencies and invalid items 3.7, 7.1 and 7.3.

This setup follows the [FHIR multilingual IG guidance](https://build.fhir.org/ig/FHIR/ig-guidance/languages.html). Inherited dependency text and external terminology may fall back to their original language. Translation policy and feedback are described in the published `translationinfo.html` page. The bilingual source changes have been checked without running SUSHI or a full Publisher build; generated output must be refreshed by an authorized build before publication.
