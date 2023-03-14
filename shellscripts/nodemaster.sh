#!/bin/bash

# set up variables
NODE_VERSION="v10.13.0"
NPM_VERSION="6.11.0"
YARN_VERSION="1.22.5"

# download and install Node.js
mkdir ~/nodejs
curl -L "https://nodejs.org/dist/${NODE_VERSION}/node-${NODE_VERSION}-linux-x64.tar.gz" | tar -zx -C ~/nodejs --strip-components=1
export PATH=$HOME/nodejs/bin:$PATH

# install npm
npm install -g "npm@${NPM_VERSION}"

# install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version "${YARN_VERSION}"
export PATH=$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH
