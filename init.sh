#!/bin/bash
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
sudo apt install python3.10 -y
sudo apt install python3.10-distutils -y

# install aws
sudo apt  install awscli -y

# install the Libraries for python script
pip3 install -r requirements.txt

# run the python script
python3 script.py

# copy the result into s3 bucket
aws s3 cp project_webScraping_Group2.csv #s3://your bucket name
