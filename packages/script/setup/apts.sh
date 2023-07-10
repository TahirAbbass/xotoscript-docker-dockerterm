# EDITOR

sudo apt-get install --yes --no-install-recommends --allow-unauthenticated \
  tmux \
  vim

sudo curl -LO https://github.com/neovim/neovim/releases/download/v${NEOVIM_VERSION}/nvim-linux64.tar.gz ${USER_HOME}/nvim-linux64.tar.gz | bash
tar xzvf ${USER_HOME}/nvim-linux64.tar.gz
sudo ln -sf ${USER_HOME}/nvim-linux64/bin/nvim /usr/bin/nvim

# GIT

set -ex && sudo apt-get install --yes --no-install-recommends --allow-unauthenticated \
  git

sudo git config --global init.defaultBranch development
sudo git config --global user.name $NAME
sudo git config --global user.email $EMAIL
sudo git config --global core.excludesfile '~/.sudo gitignore'
sudo git config --global credential.helper cache
sudo git config --global color.ui true

# NODE

sudo curl -fsSL https://raw.githubusercontent.com/creationix/nvm/v${NVM_VERSION}/install.sh | bash

if [ -d "${USER_HOME}/.nvm" ]; then
  export NVM_DIR="${USER_HOME}/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

nvm install v15
nvm use v15
npm i yarn -g

# DOCKER

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update

set -ex && sudo apt-get install --yes --no-install-recommends --allow-unauthenticated \
  docker-ce \
  docker-ce-cli \
  containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# SSH

set -ex && sudo apt-get install --yes --no-install-recommends --allow-unauthenticated \
  openssh-client \
  openssh-server

mkdir -p "${USER_HOME}/.ssh"
chown -R $USER_NAME ${USER_HOME}/.ssh

ssh-keygen -t rsa -C $EMAIL -q -f "${USER_HOME}/.ssh/id_rsa" -N ""

eval "$(ssh-agent -s)"
