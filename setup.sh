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
ln -s ~/dotfiles/.tigrc ~/.tigrc

# login shell
# TODO unknown userと言われる
# /etc/shellsに/usr/local/bin/zshを追加する（permission Error)
brew install zsh
chsh -s /usr/local/bin/zsh

# git config editorの設定
git config --global core.editor vim

# setting osx
sh ./osx.sh

# open app
open -a "/Applications/Google Chrome.app/"
open -a "/Applications/Caffeine.app/"
open -a "/Applications/BetterTouchTool.app/"
open -a "/Applications/iTerm.app"
open -a "/Applications/Slack.app"
open -a "/Applications/Alfred\ 3.app/"
open -a "/Applications/HyperSwitch.app"


