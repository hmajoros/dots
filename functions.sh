# assumes file is being symlinked
# to a file of the same name in the
# user's home directory
symlink() {
  file=$1
  echo $file

  if [ ! -e $file ]; then
    echo "Can't find file: $file"
    exit 1
  else
    echo "Symlinking $file"
    ln -s $(pwd)/$file $HOME/$file
  fi
}
