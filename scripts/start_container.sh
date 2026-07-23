#!/bin/bash
# Log in to ECR
aws ecr get-login-password --region <REGION> | docker login --username AWS --password-stdin <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com

# Pull the latest image
docker pull <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/<REPOSITORY_NAME>:latest

# Run the new container
docker run -d --name my-app-container -p 80:80 <AWS_ACCOUNT_ID>.dkr.ecr.<REGION>.amazonaws.com/<REPOSITORY_NAME>:latest