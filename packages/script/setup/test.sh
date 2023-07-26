#!/bin/bash

set -x

# LOAD .ENV FILE

if [ -f .env ]; then
   source .env
fi

sudo curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh  | bash

echo "NVM_VERSION=$NVM_VERSION"
echo "NEOVIM_VERSION=$NEOVIM_VERSION"
echo "YARN_VERSION=$YARN_VERSION"
echo "POSTGRES_VERSION=$POSTGRES_VERSION"
echo "JAVA_VERSION=$JAVA_VERSION"
echo "RUBBY_VERSION=$RUBBY_VERSION"
echo "NERDS_FONT_VERSION=$NERDS_FONT_VERSION"
echo "FZF_VERSION=$FZF_VERSION"
echo "GITSTATUS_VERSION=$GITSTATUS_VERSION"
