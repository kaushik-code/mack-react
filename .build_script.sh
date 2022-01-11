#!/bin/bash
#update your token and git url in the clone command below
#update your s3 bucket name

git clone -b develop  https://gitlab+deploy-token-497024:glpat-LzXgf9mE8XZgYBExnzJw@gitlab.com/awskaushik/mack-node.git
cd mack-node
npm install express --save
npm config set fund false --global
cd ../
apt-get update -y
apt-get install zip -y
apt-get install awscli -y
aws configure set aws_access_key_id AKIAXMJWKFPCXXGJ3ZMV
aws configure set aws_secret_access_key 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
zip -r mack-node.zip mack-node/ -x '*/node_modules/*' -x '*/.git/*'
aws s3 cp mack-node.zip s3://gitrunnerbucket/
