#!/bin/bash
set -eu

# Build the project containers
docker build -t ${PROJECT_NAME}:latest .

# Run tests, also bringing up container dependencies
docker run ${PROJECT_NAME} /docker/run_tests.sh

# Stop and remove the containers
docker stop ${PROJECT_NAME} && docker rmi ${PROJECT_NAME}