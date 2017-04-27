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

# symbolic link
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vim ~/.vim:

# login shell
# TODO unknown userと言われる
# /etc/shellsに/usr/local/bin/zshを追加する（permission Error)
brew install zsh
chsh -s /usr/local/bin/zsh

# git config editorの設定
git config --global core.editor vim

# Google IME
brew cask install google-japanese-ime
# tig
brew install tig
# clang-format
brew install clang-format
brew tap caskroom/eask
brew cask install google-chrome
brew cask install java
brew cask install android-studio
brew cask install iterm2
brew cask install bettertouchtool
brew install npm

brew install git
brew install ansible
brew cask install virtualbox
brew cask install vagrant
brew install maven
brew cask install caffeine
brew cask install xtrafinder
brew cask install karabiner
brew cask install android-studio

