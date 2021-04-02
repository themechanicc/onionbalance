#!/bin/bash
set -ex

[[ $TEST ~= functional_(.*) ]]
version="${BASH_REMATCH[1]}"
pytest --cov-report=term-missing --cov=onionbalance test/functional/$version/
pylint onionbalance 
flake8 onionbalance