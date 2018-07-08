#!/usr/bin/env bash
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
