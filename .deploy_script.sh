ssh git-user@$SERVER "sudo touch kaushik && sudo apt-get install awscli -y && sudo aws configure set aws_access_key_id $AWS_ACCESS_KEY_ID && sudo aws configure set aws_secret_access_key $AWS_SECRET_ACCESS_KEY && sudo aws s3 cp s3://mygitlabrunner/reactjs-frontend.zip ./home/ubuntu && sudo apt-get install zip && sudo unzip reactjs-frontend.zip && sudo service nginx restart"




 #ssh ubuntu@$SERVER "aws s3 cp s3://$BUCKET_NAME/myfirstproject.zip .  && unzip myfirstproject.zip && cd myfirstproject && npm install express --save && forever stop index.js || true && forever start index.js "
