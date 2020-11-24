#!/bin/bash
#
# provision.sh
# Distributed under terms of the MIT license.

sudo apt update && sudo apt upgrade

# Install Ubuntu packages
sudo apt install $(cat packages.txt) -y

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
