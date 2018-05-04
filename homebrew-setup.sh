#!/usr/bin/env bash
# brew install
if test ! $(which brew); then
	echo "Installing homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating homebrew recipes..."
brew update

echo "Updating existing binaries"
brew upgrade

brew tap caskroom/cask

binaries=(
zsh
tig
clang-format
npm
git
ansible
maven
watchman
mas
nvm
yarn
go
git-now
gradle
)

echo "Installing binaries..."
brew install ${binaries[@]}

apps=(
 google-japanese-ime
 google-chrome
 java
 android-studio
 iterm2
 bettertouchtool
 slack
 hyperswitch
 alfred
 virtualbox
 vagrant
 caffeine
 karabiner
 android-studio
 bartender
 istat-menus
 react-native-debugger
 clipy
 goland
 jasper
 skype
)


echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

npmmodules=(
 react-native-cli
 react-devtools
 react-native-git-upgrade
)
echo "Install npm modules..."
npm install -g ${npmmodules[@]} 

storeapps=(
457622435 # Yoink
497799835 # XCode
866773894 # Quiver
539883307 # Line
1013897218 # App Cleaner
)

echo "Installing store apps..."
mas upgrade
mas install ${storeapps[@]}

brew cleanup
brew cask cleanup

sudo gem install cocoapods
