#!/bin/bash
set -eu


cd /dockerapp

echo "Run tests"
bundle exec rspec --format progress -r rspec_junit_formatter --format RspecJunitFormatter -o artifacts/tests_output.xml