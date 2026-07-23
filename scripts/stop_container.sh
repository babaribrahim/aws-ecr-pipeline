#!/bin/bash
# Stop and remove existing container if running
docker stop my-app-container || true
docker rm my-app-container || true