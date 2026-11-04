#!/usr/bin/env bash
# Shown in the terminal when the Codespace opens, so people know when EHRbase is ready.
echo "Waiting for EHRbase to start (first start takes 1-2 minutes)..."
for i in $(seq 1 60); do
  if curl -sf http://ehrbase:8080/ehrbase/rest/status >/dev/null 2>&1; then
    echo "EHRbase is ready. Your form is in the 'My form' preview tab."
    exit 0
  fi
  sleep 5
done
echo "EHRbase hasn't started yet. Run the task 'Restart EHRbase' (Ctrl+Shift+P > Run Task)."
