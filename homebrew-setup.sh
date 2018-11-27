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
brew tap homebrew/cask
brew cask install java

binaries=(
zsh
tig
clang-format
npm
git
ansible
watchman
mas
nvm
yarn
go
git-now
gradle
swiftlint
postgresql
ios-deploy
--HEAD libimobiledevice
ideviceinstaller
pinentry-mac
maven
quiver
)

echo "Installing binaries..."
for ((i = 0; i < ${#binaries[@]}; i++)) {
  echo "Install ${binaries[i]}"
  brew install ${binaries[i]}
}

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
docker
1password
licecap
atom
intellij-idea-ce
eqmac
visual-studio-code
)


echo "Installing apps..."
for ((i = 0; i < ${#apps[@]}; i++)) {
  echo "Install ${aps[i]}"
  brew cask install --appdir="/Applications" ${apps[i]}
}

npmmodules=(
 react-native-cli
 react-devtools
 react-native-git-upgrade
 react-scripts
 puppeteer
 create-react-app
)

echo "Install npm modules..."
for ((i = 0; i < ${#npmmodules[@]}; i++)) {
  echo "Install ${aps[i]}"
  npm install -g ${npmmodules[i]} 
}

brew cleanup

curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/deploy/Scripts/install.sh | sh
gemapps=(
cocoapods
update_xcode_plugins
rails
spec
)

for ((i = 0; i < ${#gemapps[@]}; i++)) {
   gem install ${gemapps[i]}
}

update_xcode_plugins

# for flutter
pip install six

# install nodebrew
curl https://raw.github.com/hokaccha/nodebrew/master/nodebrew | perl - setup
