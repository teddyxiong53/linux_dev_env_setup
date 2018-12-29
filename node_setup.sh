#!/bin/sh

set -e 


# download nvm 
git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags` && cd ~

# set ~/.bashrc
echo "export NVM_NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node" >> ~/.bashrc
source ~/.nvm/nvm.sh

# install node v10.14.0
nvm install v10.14.0
# set default
nvm alias default v10.14.0

