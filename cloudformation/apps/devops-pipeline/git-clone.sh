#!/bin/bash

echo "Cloning the repository from CodeCommit"

URL=$(aws cloudformation --region us-east-1 describe-stacks --stack-name data-app-devops-pipeline --query "Stacks[0].Outputs[?OutputKey=='DataAppRepoURLSSH'].OutputValue" --output text)

git clone $URL cloudformation/apps/devops-pipeline/data-app/