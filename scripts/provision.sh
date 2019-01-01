#!/bin/sh -eux
export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get -y install python-pip python-dev build-essential libffi-dev libssl-dev git curl software-properties-common
sudo pip install --upgrade pip
sudo pip install ansible
sudo pip install --upgrade setuptools

# Install Old Friends
sudo apt-get install --no-install-recommends \
    dc \
    bc \
    -y

# Install Editor
sudo apt-get install --no-install-recommends \
    vim \
    -y

# Install Dev Tools
sudo apt-get install --no-install-recommends \
    git \
    gdb \
    libgtest-dev \
    cmake \
    g++ \
    valgrind \
    libpthread-stubs0-dev \
    build-essential \
    python3-dev \
    graphviz \
    -y

# Install Rust
curl -sf -L https://static.rust-lang.org/rustup.sh | sh -s -- -y
PATH=$PATH:~/.cargo/bin
rustup component add rust-src
rustup component add rustfmt

# Install Pandoc and Tex
sudo apt-get install --no-install-recommends \
    pandoc \
    texlive-latex-base \
    texlive-fonts-recommended \
    lmodern \
    -y

# Setup bash profile
cp /vagrant/templates/.bash_profile ~/.bash_profile
touch ~/.hushlogin

# Install vim and YouCompleteMe rust semantic autocompletion
mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp /vagrant/templates/.vimrc ~/.vimrc
vim -c 'PluginInstall' -c 'qa!'
cd ~/.vim/bundle/YouCompleteMe/
python3 install.py --clang-completer --rust-completer