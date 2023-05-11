#!/bin/bash 

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y python3-pip
sudo apt-get install -y mysql-server
pip3 install --upgrade flask
pip3 install flask-mysqldb
pip3 install mysql-connector-python


git clone https://github.com/Marc144/CloudComputingFinalProject.git

sudo mysql -u root -p < CloudComputingFinalProject/todolist.sql

python3 todolist_API.py