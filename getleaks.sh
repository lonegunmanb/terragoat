#!/usr/bin/env bash

docker run -v $(pwd):/path zricethezav/gitleaks:latest detect --source="/path" --no-git -r /path/finding.json --redact
success=$?
[ $success -eq 0 ] && exit 0 || cat $(pwd)/finding.json && exit 1