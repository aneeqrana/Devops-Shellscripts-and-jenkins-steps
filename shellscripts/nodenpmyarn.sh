#!/bin/bash

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm install -g npm@^6.11.0 || sudo npm install -g npm@^7.5.6

# Install Yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

# Verify versions
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"
echo "Yarn version: $(yarn -v)"
