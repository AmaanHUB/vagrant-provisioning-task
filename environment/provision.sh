#!/bin/bash
#
# provision.sh
# Distributed under terms of the MIT license.

sudo apt update && sudo apt upgrade

# Install nginx
sudo apt install nginx -y

# Install git
sudo apt install git -y

# Install nodejs
sudo apt install nodejs -y

# Install npm (needs to do separately)
sudo apt install npm -y

# Install MongoDb
sudo apt install mongodb -y

# Install pm2 with npm
sudo npm install pm2

# Restart nginx just in case
sudo systemctl restart nginx.service

# Restart mongodb just in case
sudo systemctl restart mongodb.service

# Move to /app repository
cd /app

# Install mongoose (requirements for app)
sudo npm install mongoose

# Install faker (requirements for app)
sudo npm install faker

# Install the app dependencies
sudo npm install

# Run the app
sudo npm start &
