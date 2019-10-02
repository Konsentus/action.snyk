#!/bin/sh

OUTPUT=$(snyk test $*)
CODE=$?

echo "${OUTPUT}"

if [ "${CODE}" -ne "0" ]; then
    snyk test --json $* | snyk-to-html -o results.html
    echo ::set-output name=results::results.html
    exit 1
fi
