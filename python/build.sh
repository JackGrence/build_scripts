#!/bin/bash

mkdir -p ~/code
cd ~/code
wget https://www.python.org/ftp/python/3.11.2/Python-3.11.2.tgz
tar xzf Python-3.11.2.tgz
cd Python-3.11.2

sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
       libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
       libncurses5-dev libncursesw5-dev xz-utils tk-dev

mkdir -p ~/build
./configure --enable-optimizations --with-ensurepip=install --prefix=$HOME/.local/

make -j
make install
