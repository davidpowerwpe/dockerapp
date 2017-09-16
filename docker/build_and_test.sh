#!/bin/bash
set -eu

# Build the project containers
docker build -t ${PROJECT_NAME} .

# Run tests, also bringing up container dependencies
docker run ${PROJECT_NAME} /docker/setup_and_run.sh

# Stop and remove the containers
docker stop ${PROJECT_NAME} && docker rmi ${PROJECT_NAME}