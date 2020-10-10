#!/bin/bash -xe

amazon-linux-extras install docker
sudo yum install docker -y
service docker start
usermod -a -G docker ec2-user
docker info
sudo yum install awscli -y
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 782467613200.dkr.ecr.us-east-1.amazonaws.com
docker build. -t myhtml
docker tag myhtml:latest 782467613200.dkr.ecr.us-east-1.amazonaws.com/test-repository:latest
docker push 782467613200.dkr.ecr.us-east-1.amazonaws.com/test-repository:latest
