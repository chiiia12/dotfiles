# brew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

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
if [ -f ~/.ideavimrc ]; then
	rm ~/.ideavimrc
fi

# symbolic link
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vim ~/.vim:
ln -s ~/dotfiles/.tigrc ~/.tigrc
ln -s ~/dotfiles/.ideavimrc ~/.ideavimrc


# git config 
git config --global core.editor vim
git config --global alias.delete-merged-branches '!git branch --merged | grep -v \* | xargs -I % git branch -d %'

# setting osx
sh ./osx.sh
sh ./homebrew-setup.sh 
sh ./maapp-setup.sh

