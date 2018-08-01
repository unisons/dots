#!/bin/bash
sudo apt-get install libevent-dev libncurses-dev build-essential

# Build & Install tmux
git clone https://github.com/tmux/tmux.git
pushd tmux
git checkout 2.5
sh autogen.sh
./configure && make || exit -1
sudo make install
popd

# CTAGS UNIVERSAL
git clone https://github.com/universal-ctags/ctags.git
pushd ctags
git pull
sh autogen.sh
./configure && make || exit -1
sudo make install
popd
