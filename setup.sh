#-------------------------------------#
#   install + change shell to zsh
#-------------------------------------#
if hash zsh 2>/dev/null; then
  echo "zsh already installed!"
  continue
else 
  # install zsh
  brew install zsh

  # set zsh as primary shell
  chsh -s $(which zsh)

  # install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  # install custom theme
  cp agnoster-hank.zsh-theme ~/.oh-my-zsh/themes/
fi

#-------------------------------------#
#      install + setup vim shit 
#-------------------------------------#

# install vundle cause thats my fuckin jam
if [ ! -d $HOME/.vim/bundle/vundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# here comes dat vimrc
# (o shit waddup)
if [ -e $HOME/.vimrc ]; then
  echo "vimrc already exists!"
else
  file='.vimrc'
  dest=$HOME/$file
  ln -s $(pwd)/$file $dest
fi

#-------------------------------------#
#       just tmux my shit up 
#-------------------------------------#

# TODO: do this
