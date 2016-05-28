# TODO brew install

# install neoBundle
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# setup vim
  vim -s ./setup.vim

# symlink
if [ -f ~/.vimrc ]; then
	rm ~/.vimrc
fi
if [ -f ~/.zshrc ]; then
	rm ~/.zshrc
fi

# symbolic link
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vim ~/.vim:

# login shell
# TODO unknown userと言われる
brew install zsh
chsh -s /usr/local/bin/zsh

# git config editorの設定
git config --global core.editor vim
