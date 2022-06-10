#!/usr/bin/env bash

echo $(pwd)
ls
docker run --rm -v $(pwd):/path zricethezav/gitleaks:latest detect --source="/path" --no-git -r /path/finding.json --redact
success=$?
[ $success -eq 0 ] && exit 0 || ls && cat $(pwd)/finding.json && exit 1