#!/bin/bash
###########################################
# .make.sh
# This script makes symlinks from home directory
# to dotfiles directory.
# based on http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/

###########
# Variables
dir=~/dotfiles              # dotfiles directory
olddir=~/dotfiles_old       # where old stuff goes
files="bashrc vimrc tmux.conf" #  vim"    # list of files/folders to symlink in

###########
# create dotfiles_old in home_dir
echo "Creating $olddir for backup of existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to dotfiles dir
echo "Changing to $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles to backup directory
for file in $files; do
    echo "Moving any existing dotfiles form ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "Dotfiles symlink installation complete!"
