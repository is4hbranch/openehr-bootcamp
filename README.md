# openEHR Bootcamp — GitHub Codespaces template

Each participant opens their own Codespace from this repo and gets a private
EHRbase + PostgreSQL + VS Code + live form preview. Nothing is shared between people.

| File | Purpose |
|---|---|
| `.devcontainer/` | Defines the environment: Node workspace, EHRbase 2.0.0, Postgres, forwarded ports |
| `.vscode/tasks.json` | One-click tasks: Save my work, Restart my form, Restart EHRbase, Reset EHRbase data |
| `START-HERE.md` | Opens automatically for participants |
| `index.html`, `src/` | Placeholder form that checks EHRbase, creates an EHR, lists templates |
| `vite.config.js` | Proxies `/ehrbase` to the EHRbase container |

## Admin: publish the template (about 10 minutes)

1. Create a new GitHub repo, e.g. `openehr-bootcamp`. **Public** lets participants use
   their own free Codespaces hours.
2. Push these files:
   ```bash
   cd openehr-codespace
   git init -b main && git add -A && git commit -m "Codespaces template"
   git remote add origin https://github.com/<you>/openehr-bootcamp.git
   git push -u origin main
   ```
3. Repo **Settings → General → tick "Template repository"**.
4. Optional, for faster starts: **Settings → Codespaces → Set up prebuild** on `main`.
   This cuts first launch from about 5 minutes to about 1.

When the real bootcamp form project is ready, replace `index.html`, `src/` and
`package.json` with it, keeping `vite.config.js`'s proxy (or the equivalent for its
bundler) and pointing its EHRbase URL at `/ehrbase/rest/openehr/v1`.

## Participant: get started (one time)

1. Sign in to GitHub (create a free account if needed).
2. Open the template repo → **Use this template → Create a new repository** (private,
   in their own account). This gives them their own copy to save work to.
3. In their new repo: **Code → Codespaces → Create codespace on main**.
4. Wait for "EHRbase is ready" in the terminal; the form opens in a preview tab.

After that, they reopen it from <https://github.com/codespaces>.
