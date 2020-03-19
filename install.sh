#!/bin/bash

# Simple shell script to configure your dotfiles
# repository to sync your configurations across
# UNIX machines. Tested only on Linux, for now.

git clone --bare git@github.com:AdrianWR/Dotfiles.git $HOME/.cfg
function config {
   /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files to $HOME/.config-backup.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config submodule update --init --recursive
config config status.showUntrackedFiles no
rm $HOME/README.md $HOME/install.sh
