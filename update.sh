#!/usr/bin/env bash

echo "Updating...";

cd ~/.files;
git pull origin master;

if [ ! -L ~/.zshrc ]; then
	echo "Symlink ~/.zshrc -> ~/.files/.zshrc";
	ln -s ~/.files/.zshrc ~/;
fi;

if [ ! -L ~/.vimrc ]; then
	echo "Symlink ~/.vimrc -> ~/.files/.vimrc";
	ln -s ~/.files/.vimrc ~/;

	echo "Symlink ~/.vim -> ~/.files/vim";
	ln -s ~/.files/vim ~/.vim;
fi;

if [ ! -L ~/.gitconfig ]; then
	echo "Symlink ~/.gitconfig -> ~/.files/.gitconfig";
	ln -s ~/.files/.gitconfig ~/;
fi;

if [ ! -L ~/.config/psysh/config.php ]; then
    echo "Symlink ~/.config/psysh/config.php -> ~/.files/psysh-config.php";
    ln -s ~/.files/psysh-config.php ~/.config/psysh/config.php;
fi;

source ~/.zshrc;

echo "Done.";
