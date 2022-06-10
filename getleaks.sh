#!/usr/bin/env bash

docker run -v $(pwd):/path zricethezav/gitleaks:latest detect --source="/path" --no-git -r /path/finding.json --redact
success = $?
cat ./finding.json
return $success