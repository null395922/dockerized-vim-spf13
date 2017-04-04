#!/bin/bash

# install some software
echo "-->to be install components..."
apt-get update
apt-get install curl make htop tree -y
# install vim8, support lua,python,ruby,perl
apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git -y

cd ~
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-config-dir=/usr/lib/python3.5/config \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr

# alias vi="vim" in .zshrc / .bashrc
cd ~/vim
make
make install

# install spf13 vim
# curl http://j.mp/spf13-vim3 -L -o - | sh
curl https://raw.githubusercontent.com/penn201500/spf13-vim/3.0/bootstrap.sh -L -o - | sh

echo "-->finnished..."
