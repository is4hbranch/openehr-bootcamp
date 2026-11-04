# Effort test — Codespaces vs server

Run this once as yourself, then ideally once with a non-technical colleague watching
over your shoulder (or doing it themselves). Record times and anything that confused them.

## A. Admin effort

| Step | Expected | Actual time | Notes |
|---|---|---|---|
| Create repo, push files, mark as template | ~10 min | | |
| Set up prebuild (optional) | ~5 min + build time | | |

## B. Participant first-time setup

| Step | Expected | Actual time | Confusing? |
|---|---|---|---|
| GitHub account (if none) | 5 min | | |
| Use this template → new repo | 1 min | | |
| Create codespace → editor open | 2–5 min (≈1 with prebuild) | | |
| "EHRbase is ready" in terminal | +1–2 min | | |
| Form visible in preview tab | automatic | | |

## C. Daily tasks a participant must manage

| Check | Pass? | Notes |
|---|---|---|
| Edit text in `index.html` → preview updates without refresh | | |
| "Check EHRbase" button says Connected | | |
| "Create EHR" returns an EHR id | | |
| Open EHRbase API port → Swagger loads at `/ehrbase/swagger-ui/index.html` | | |
| Upload a test template in Swagger → appears under "List templates" | | |
| Run Task → Save my work → commit appears on GitHub | | |
| Close tab, wait 30+ min, reopen from github.com/codespaces → work still there | | |
| Run Task → Reset EHRbase data → templates list empty | | |
| Codespaces: Rebuild Container → everything comes back | | |

## D. Usage and cost

After the test, check **github.com/settings/billing** → Codespaces usage. A 4-core
Codespace uses 4 core-hours per hour, so the 120 free core-hours ≈ 30 hours a month.

## E. Decision questions

- Could the two less technical participants do section B without help?
- How many "Save my work" reminders would they need?
- Was the 1–5 minute start time acceptable for a session?
- Compared with the server option (a bookmark + password), which caused fewer questions?
