#!/bin/bash

# Read variable values from .env file using sed
while IFS= read -r line; do
  if [[ "$line" =~ ^[[:alnum:]_]+= ]]; then
    eval "$line"
  fi
done < .env

echo "USER_NAME=$USER_NAME"

# SET HOME ENV

if [ "$USER_NAME" = "root" ]; then
  echo "USER_HOME=/$USER_NAME"
  echo "ZSH_CUSTOM=/$USER_NAME/.oh-my-zsh/custom"
else
  echo "USER_HOME=/home/$USER_NAME"
  echo "ZSH_CUSTOM=/home/$USER_NAME/.oh-my-zsh/custom"
fi

# PROFILE

echo "EMAIL=$EMAIL"
echo "NAME=$NAME"
echo "USER_GROUP=$USER_GROUP"

# VERSIONS

echo "NVM_VERSION=$NVM_VERSION" 
echo "NEOVIM_VERSION=$NEOVIM_VERSION"
echo "YARN_VERSION=$YARN_VERSION"
echo "POSTGRES_VERSION=$POSTGRES_VERSION"
echo "JAVA_VERSION=$JAVA_VERSION"
echo "RUBBY_VERSION=$RUBBY_VERSION"
echo "NERDS_FONT_VERSION=$NERDS_FONT_VERSION"
echo "FZF_VERSION=$FZF_VERSION"
echo "GITSTATUS_VERSION=$GITSTATUS_VERSION"

# # SCRIPT

# sudo chmod a+x ./script/setup/*.sh

# # ROOT

# sudo sh ./script/setup/root.sh

# # USER

# sudo sh ./script/setup/apts.sh
# sudo sh ./script/setup/language.sh
# sudo sh ./script/setup/database.sh
# sudo sh ./script/setup/zsh.sh
# sudo sh ./script/setup/package.sh

# cp -o $USER_NAME ./script/setup/ccat /usr/local/bin/

# sudo sh ./script/setup/clean.sh

# zsh

# FINISH
# echo " ___________________   ";
# echo "	< FINISHED >         ";
# echo " -------------------   ";
# echo "   \                   ";
# echo "    \                  ";
# echo "        .--.           ";
# echo "       |o_o |          ";
# echo "       |:_/ |          ";
# echo "      //   \ \         ";
# echo "     (|     | )        ";
