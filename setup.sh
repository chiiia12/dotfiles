# symlink
if [ -f ~/.vimrc ]; then
	rm ~/.vimrc
fi
if [ -f ~/.zshrc ]; then
	rm ~/.zshrc
fi

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
