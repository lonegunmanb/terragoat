#!/usr/bin/env bash

echo $(pwd)
ls
docker run --rm --mount type=bind,source=${PWD},target=/path zricethezav/gitleaks:latest detect --source="/path" --no-git -r /path/finding.json --redact
success=$?
[ $success -eq 0 ] && exit 0 || ls && cat $(pwd)/finding.json && exit 1