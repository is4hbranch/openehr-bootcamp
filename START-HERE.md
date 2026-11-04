# Welcome to your openEHR workspace

Everything here is yours alone: your own EHRbase server, database and form.

## When you open this page

1. A terminal tab called **Start my workspace** opens at the bottom. Wait for it to say
   **"EHRbase is ready"** (1–2 minutes the first time). Keep that tab open while you work.
2. Your form then opens in the **My form** preview tab. If it doesn't, open the **Ports** tab
   (bottom panel) and click the globe icon next to **My form**.

## Editing the form

- The form's layout lives in `index.html` (and `src/`). Edit, and the preview updates
  automatically. Files save on their own.

## Uploading a template / testing the API

- In the **Ports** tab, hover **EHRbase API** and click the globe icon. Add
  `/ehrbase/swagger-ui/index.html` to the end of the address to get the API explorer.
- Upload templates under **Template → POST /definition/template/adl1.4**.

## Saving your work — do this before you finish each day

`Ctrl+Shift+P` (Mac: `Cmd+Shift+P`) → **Run Task** → **Save my work**.

Unsaved work can be lost if the workspace is deleted after a long period of inactivity.

## If something goes wrong

`Ctrl+Shift+P` → **Run Task**, then:

| Problem | Task |
|---|---|
| Form preview is blank or stuck | **Start my workspace** |
| Form says EHRbase isn't reachable | **Restart EHRbase** |
| Want a clean, empty EHRbase | **Reset EHRbase data** |
| Everything is broken | `Ctrl+Shift+P` → **Codespaces: Rebuild Container** |

## When you're done for the day

Save your work, then close the tab. The workspace stops by itself after 30 minutes idle,
so it doesn't use up your free hours. Reopen it from <https://github.com/codespaces>.
