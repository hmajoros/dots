#-------------------------------------#
#   install + change shell to zsh
#-------------------------------------#
if hash zsh 2>/dev/null; then
  echo "zsh already installed!"
else 
  # install zsh
  # TODO: brew only on os x, need apt-get for linux shit
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
if [ ! -d dots ]; then
	echo "Can't find the dots directory!"
	exit 1
fi

# TODO: this is still super fucked,
# need to test out on fresh machines
for path in $(pwd)/dots/.*; do
	# echo $path
  # file = ${path##*/}
  file = $(basename $path)
  echo $file
  # dest=$HOME/$file
	# if [ -e $dest ]; then
	# 	echo "$dest already exists!" >> ~/dotfilestmp
	# else
	# 	echo "Symlinking $file!"
	# 	ln -s $(pwd)/$file $dest
	# fi
done

#-------------------------------------#
#       just tmux my shit up 
#-------------------------------------#

# TODO: do this
