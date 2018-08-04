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
ln -s $PWD/tmux.conf ~/.tmux.conf

# CTAGS UNIVERSAL
git clone https://github.com/universal-ctags/ctags.git
pushd ctags
git pull
sh autogen.sh
./configure && make || exit -1
sudo make install
popd

# BASE16-shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

rcfiles=( ~/.zshrc ~/.bashrc )
for f in ${rcfiles[@]} ; do
  if [ -f "$f" ] && ! grep -q BASE16 "$f" ; then
echo $f
cat << EOF >> $f
# Base16 Shell
BASE16_SHELL="\$HOME/.config/base16-shell/"
[ -n "\$PS1" ] && \\
  [ -s "\$BASE16_SHELL/profile_helper.sh" ] && \\
  eval "\$("\$BASE16_SHELL/profile_helper.sh")"
EOF
  fi
done
