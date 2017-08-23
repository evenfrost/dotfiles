#!/bin/sh

# make keyboard repeat faster
gsettings set org.gnome.desktop.peripherals.keyboard delay 300
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 20

# set git config
git config --global pull.rebase true
git config --global mergetool.sublime.cmd "subl -w \$MERGED"
git config --global mergetool.sublime.trustExitCode false
git config --global merge.tool sublime
git config --global hub.protocol ssh
git config --global user.name evenfrost
git config --global user.email evenfrosty@gmail.com
git config --global push.default simple
git config --global mergetool.keepBackup false

# install vim config
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

# set npm config
npm config set loglevel error
