# dotfiles

linux configs and utility scripts I got used to

## vim

Vim configs are stored in .vimrc file.
Some sample configs - like enabling line numbers by default or setting up useful %% expand macro.

### Vundle
To set up plugins [vundle](https://github.com/VundleVim/Vundle) needs to be installed

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## tools

Contains sample scripts that i regulary use. I usually install this dir to ~/tools

* vimdiffwrap.sh -- wrapper to use vim as svn difftool
* vimmergewrap.sh -- wrapper to vim as svn mergetool

## SVN

Copy the .subversion/config to ~/.subversion/config.

This will mainly set up vimdiff and vimwrap as svn standart diff\merge tools

