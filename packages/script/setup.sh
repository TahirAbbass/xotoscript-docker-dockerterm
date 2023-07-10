#!/bin/bash

USER_NAME=$1

echo 'USER_NAME=$USER_NAME' >>/etc/environment

# SET HOME ENV

if [ "$USER_NAME" = "root" ]; then
  echo "USER_HOME=/$USER_NAME" >>/etc/environment
  echo "ZSH_CUSTOM=/$USER_NAME/.oh-my-zsh/custom" >>/etc/environment
else
  echo "USER_HOME=/home/$USER_NAME" >>/etc/environment
  echo "ZSH_CUSTOM=/home/$USER_NAME/.oh-my-zsh/custom" >>/etc/environment
fi

# PROFILE

echo "EMAIL=xotosphere@gmail.com" >>/etc/environment
echo "NAME=xotosphere" >>/etc/environment
echo "USER_GROUP=dockerterm" >>/etc/environment

# VERSIONS

echo "NVM_VERSION=0.33.2" >>/etc/environment
echo "NEOVIM_VERSION=0.9.0" >>/etc/environment
echo "YARN_VERSION=1.8.0" >>/etc/environment
echo "POSTGRES_VERSION=12" >>/etc/environment
echo "JAVA_VERSION=11" >>/etc/environment
echo "RUBBY_VERSION=2.1.1" >>/etc/environment
echo "NERDS_FONT_VERSION=2.1.0" >>/etc/environment
echo "FZF_VERSION=0.21.1" >>/etc/environment
echo "GITSTATUS_VERSION=1.0.0" >>/etc/environment

# SCRIPT

sudo chmod a+x ./script/setup/*.sh

# ROOT

sudo sh ./script/setup/root.sh

# USER

sudo sh ./script/setup/apts.sh
sudo sh ./script/setup/language.sh
sudo sh ./script/setup/database.sh
sudo sh ./script/setup/zsh.sh
sudo sh ./script/setup/package.sh

cp -o $USER_NAME ./script/setup/ccat /usr/local/bin/

sudo sh ./script/setup/clean.sh

zsh

FINISH
echo " ___________________   ";
echo "	< FINISHED >         ";
echo " -------------------   ";
echo "   \                   ";
echo "    \                  ";
echo "        .--.           ";
echo "       |o_o |          ";
echo "       |:_/ |          ";
echo "      //   \ \         ";
echo "     (|     | )        ";
