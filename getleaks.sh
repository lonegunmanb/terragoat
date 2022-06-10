#!/usr/bin/env bash

echo $(pwd)
ls

success=$?
[ $success -eq 0 ] && exit 0 || ls && cat $(pwd)/finding.json && exit 1