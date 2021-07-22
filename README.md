# dotfiles
http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/


Cloning Our Dotfiles to Another Machine
Ultimately, we’re going to come to a point where we want to use our customized dotfiles on another server or workstation. That is, after all, one of the primary benefits of using Git to manage our dotfiles. To do this, it’s as simple as running the following command from our home directory:

`git clone git://github.com/<mygithubusername>/dotfiles.git`
Once the repository has been cloned to our home directory, simply change to the dotfiles directory, make all the scripts executable, and run the install script, like so:
```
cd ~/dotfiles
chmod +x *.sh
./install.sh
```

That’s it! If the settings don’t take effect right away, we can just log out and log back in (this will re-source our dotfiles).

