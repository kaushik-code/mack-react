#!/bin/bash
#update your token and git url in the clone command below
#update your s3 bucket name

git clone -b develop  https://gitlab+deploy-token-497024:glpat-7Md6Lz2rSLMzHqUdxiye@gitlab.com/awskaushik/mack-react.git
cd reactjs-frontend
npm install express --save
npm config set fund false --global
sudo npm run build
cd ../
sudo apt-get update -y
sudo apt-get install zip -y
sudo apt-get install awscli -y
sudo aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID
sudo aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY
sudo zip -r reactjs-frontend.zip reactjs-frontend/ -x '*/node_modules/*' -x '*/.git/*'
sudo aws s3 cp reactjs-frontend.zip s3://mygitlabrunner/
