#!/bin/bash

ts=`date +"%Y%m%d%H%M"`

#echo $ts | sudo tee -a /ect/awscli.txt
#sudo sh -c 'echo "${ts}" >>/ect/awscli.txt'



if [ ! -f /etc/awscli.txt ];
then
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli.zip"
    unzip awscli.zip
    sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
    rm awscli.zip
    sudo sh -c "echo ${ts} >> /etc/awscli.txt"
fi

sudo pip install boto3
