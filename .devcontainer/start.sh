#!/usr/bin/env bash
# Runs in a visible terminal tab ("Start my workspace") every time the Codespace opens.
# Waits for EHRbase, then runs the form preview in the foreground so it stays up.
cd "$(dirname "$0")/.."

[ -d node_modules ] || { echo "Installing form dependencies..."; npm install; }

echo "Waiting for EHRbase to start (first start takes 1-2 minutes)..."
for i in $(seq 1 60); do
  if curl -sf http://ehrbase:8080/ehrbase/rest/status >/dev/null 2>&1; then
    echo "EHRbase is ready."
    break
  fi
  sleep 5
done
curl -sf http://ehrbase:8080/ehrbase/rest/status >/dev/null 2>&1 || \
  echo "EHRbase is still starting - the form will connect once it's up."

echo "Starting your form. Keep this terminal tab open while you work."
pkill -f vite >/dev/null 2>&1 || true
exec npm run dev
