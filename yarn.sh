#!/usr/bin/env bash
npm cache clear
apt install -y gcc
apt install -y apt-transport-https
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update
yarn upgrade
#apt remove -y cmdtest
apt install -y --no-install-recommends yarn
apt install -y libpq-dev
yarn init -y
yarn global add node-gyp
yarn install

#&&