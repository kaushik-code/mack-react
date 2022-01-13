#!/bin/bash
#update your token and git url in the clone command below
#update your s3 bucket name

git clone -b develop  https://gitlab+deploy-token-497024:glpat-7Md6Lz2rSLMzHqUdxiye@gitlab.com/awsabhilash3/reactjs-frontend.git
cd reactjs-frontend
git checkout branch develop
npm ci
#npm install express --save
#npm config set fund false --global
npm run build
cd ../
apt-get update -y
apt-get install zip -y
apt-get install awscli -y
aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
zip -r reactjs-frontend.zip reactjs-frontend/ -x '*/node_modules/*' -x '*/.git/*'
aws s3 cp reactjs-frontend.zip s3://mygitlabrunner/



#https://gitlab.com/awsabhilash3/reactjs-frontend.git
