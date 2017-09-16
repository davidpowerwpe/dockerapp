#!/bin/bash

if [ "$(whoami)" == 'jenkins' ]; then
    VOL="${WORKSPACE}/dockerapp/artifacts"
else
    VOL="/Users/david.power/Projects/dockerapp/artifacts"
fi

# remove old artifacts and set up new directory
rm -rf artifacts && mkdir -p artifacts

# Build the project containers
docker build -t dockerapp:latest .

# Run tests, also bringing up container dependencies
docker run --volume $VOL:/ruby-app/artifacts dockerapp:latest docker/run_tests.sh 