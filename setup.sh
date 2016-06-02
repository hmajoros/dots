#!/bin/bash

#-------------------------------------#
#     include extra functions 
#-------------------------------------#
# source $HOME/repos/dots/functions.sh
source $(pwd)/functions.sh

#-------------------------------------#
#   install + change shell to zsh
#-------------------------------------#
if hash zsh 2>/dev/null; then
  echo "zsh already installed!"
else 
  # install zsh
  # TODO: brew only on os x, need apt-get for linux shit
  brew install zsh
fi

# set zsh as primary shell
chsh -s $(which zsh)

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# symlink .zshrc
symlink .zshrc

# install custom theme
cp agnoster-hank.zsh-theme ~/.oh-my-zsh/themes/

#-------------------------------------#
#      install + setup vim shit 
#-------------------------------------#

# install vundle cause thats my fuckin jam
if [ ! -d $HOME/.vim/bundle/vundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# here comes dat vimrc
# (o shit waddup)
symlink .vimrc

# if [ ! -e .vimrc ]; then
# 	echo "Can't find the .vimrc!"
# 	exit 1
# else
#   echo "Symlinking .vimrc!"
#   ln -s $(pwd)/.vimrc $HOME/.vimrc
# fi

# run BundleInstall from command line
vim +PluginInstall +qall


#-------------------------------------#
#           git 'er done 
#-------------------------------------#

# get them aliases + defaults
# TODO: maybe don't want default email + name prefs?
symlink .gitconfig

#-------------------------------------#
#       just tmux my shit up 
#-------------------------------------#

# TODO: do this
