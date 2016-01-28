#!/bin/bash
echo "Start provisioning!"
echo "OS apt-get update"
sudo apt-get update

echo "Installing git"
sudo apt-get install -y git

echo "Installing ruby"
sudo apt-get install -y ruby-full

echo "Installing Sass"
gem install sass

echo "Installing Nodejs"
sudo apt-get install -y nodejs

echo "Installing npm"
sudo apt-get install -y npm
sudo chown -R $USER:$GROUP ~/.npm
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Installing Grunt (globally)"
npm install -g grunt-cli

echo "Installing Gulp (globally)"
sudo npm install -g gulp

echo "Setting up gitconfig and bash_profile files"
git clone https://github.com/akfzambrana/dotfiles.git

cp dotfiles/.bash_profile-linux .bash_profile
cp dotfiles/.gitconfig .gitconfig

source .bash_profile
rm -R dotfiles/

echo "It's all done sweetheart, enjoy! ^.^"
exit