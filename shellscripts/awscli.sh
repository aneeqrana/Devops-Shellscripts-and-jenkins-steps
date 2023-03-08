#!/bin/bash

# download the AWS CLI installer
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# unzip the installer
unzip awscliv2.zip

# run the installer
sudo ./aws/install

# remove the installer and zip file
rm -rf awscliv2.zip aws
