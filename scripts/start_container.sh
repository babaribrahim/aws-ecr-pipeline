#!/bin/bash
# Log in to ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 395063533284.dkr.ecr.us-west-2.amazonaws.com

# Pull the latest image
docker pull 395063533284.dkr.ecr.us-west-2.amazonaws.com/my-html-app:latest

# Run the new container
docker run -d --name my-app-container -p 80:80 395063533284.dkr.ecr.us-west-2.amazonaws.com/my-html-app:latest