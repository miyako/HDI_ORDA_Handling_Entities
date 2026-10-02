# HDI_ORDA_Handling_Entities

![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue&logo=github)
![4D](https://img.shields.io/static/v1?label=4D&message=21%2B&color=blue)

A **"How do I?" (HDI)** example showing how to **handle entities in an entity selection with ORDA** in 4D: create, extend, navigate, order, slice and loop over entity selections.

Originally a 4D v17 binary database, converted to a 4D project and modernised for 4D 21.

## What it demonstrates

Launch the project and pick **File > Demo** (or let `onStartup` open the splash). The demo window has one tab per topic:

| Tab | Topic | ORDA features |
|-----|-------|---------------|
| Entity selections | Build two teams from a list of gamers, navigate them | `newSelection()`, `add()`, `contains()`, `first()`, `last()`, `previous()`, `next()` |
| Ranks | Where does an entity sit in a selection? | `indexOf()` with and without an argument |
| Ordered selections | Gather ping-pong parts, the same entity several times | `newSelection(dk keep ordered)`, `isOrdered()` |
| Loops | Update every entity of a selection | `For each`, `save()` |
| Indexing | Get an entity by its rank | `entitySelection[x]` |
| Slices | Page through a selection | `slice()` |

## Points of interest

- **Entity selections as `Form` properties.** All state (`Form.gamers`, `Form.red`, `Form.blue`, `Form.gamer`, ...) lives in the `Form` object, with no process or interprocess variables.
- **List box meta expressions.** `decorateGamer` and `decorateGamerInTeam` return `fill` / `fontWeight` objects per row, based on `entitySelection.contains()`.
- **Startup pattern.** `00_Start` reuses an existing splash window, otherwise opens it in the application process with `CALL WORKER` and a non-blocking `DIALOG(...; *)`.
- **Default data.** Empty datastore classes are filled from `Resources/<Class>.4ie` / `.4si` at startup, and the gamers are loaded from `Resources/gamers_data.json`.

## Modernisation

- **Localisation:** every UI string uses `:xliff:` references or `Localized string`, with English and Japanese files in `Resources/{en,ja}.lproj` (menus, one file per form, messages).
- **Dark mode:** `styleSheets.css` uses `prefers-color-scheme` queries, with `automatic` / `automaticAlternate` colours in the forms. Row and label colours set from code are read at runtime from hidden reference rectangles (`getRefColor`, `RGBToHex`).
- **macOS Tahoe:** `styleSheets_mac.css` sets button height to 27px under `liquid-glass` and 23px under `mac-classic`.
- **Language:** `var` / `#DECLARE` replace `C_*` declarations; the `m_Quit` wrapper was replaced by the `quit` standard action.
- **Method visibility:** only `00_Start` is shown in the Run Method dialog; all subroutines are `invisible`.
- **List boxes:** `truncateMode: none` on columns and footers, `resizingMode: legacy` on every list box.

## Requirements

4D 21 or later. No component or licence beyond the base product is needed.

## Project layout

```
Project/Sources/
  Forms/HDI          splash window
  Forms/HDI2         demo window (tabs, list boxes, buttons)
  TableForms/        INFO and Gamer table forms
  Methods/           00_Start, initPages, decorate*, helpers
  menus.json         menu bar
  styleSheets*.css   shared, macOS and Windows styles
Resources/
  en.lproj, ja.lproj XLIFF files
  gamers_data.json   sample data
```

## References

- Blog post: https://blog.4d.com/handle-entities-in-an-entity-selection/
- Original download: https://download.4d.com/Demos/4D_v17/HDI_ORDA_Handling_Entities.zip
- ORDA: https://developer.4d.com/docs/ORDA/overview
- Entity selections: https://developer.4d.com/docs/API/EntitySelectionClass
- List box meta expressions: https://developer.4d.com/docs/FormObjects/listbox_overview#meta-info-expression
- CSS in 4D: https://developer.4d.com/docs/FormEditor/stylesheets

## License

See [LICENSE](LICENSE).
