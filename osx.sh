# git
git config --global core.editor vim

#langag
defaults write -g AppleLanguages -array en ja
#Click
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true 
#defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
#scroll
defaults write -g com.apple.swipescrolldirection -bool false

#F1を標準ファンクションキーとして使用
defaults write -g com.apple.keyboard.fnState -bool true 
#不可視ファイル表示
defaults write com.apple.finder AppleShowAllFiles -boolean true

#.DS_Storeを作らない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# バッテリーのパーセンテージ表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
#クイックルックで文字列を選択できるようにします。
defaults write com.apple.finder QLEnableTextSelection -bool true

#mission controlなし
#アプリケーションウィンドウなし
#ホットコーナーもなし
#ライブ変換なし
defaults write com.apple.inputmethod.Kotoeri 'JIMPrefLiveConversionKey' -bool false
# Set the icon size （アイコンサイズの設定）
defaults write com.apple.dock tilesize -int 20
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock persistent-apps -array
# dockの拡大機能をOFF
defaults write com.apple.dock magnification -bool false

#スクリーンショット 
defaults write com.apple.screencapture type jpg
defaults write com.apple.screencapture “disable-shadow” -bool yes
defaults write com.apple.screencapture name ss
defaults write com.apple.screencapture location ~/ss/

#キーボード
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 15

#finder
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
defaults write com.apple.finder ShowRecentTags -bool false
defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true
defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true
defaults write com.apple.finderSidebarSharedSectionDisclosedState -bool true
defaults write -g AppleShowAllExtensions -bool true
# Show Path bar in Finder （パスバーを表示）
defaults write com.apple.finder ShowPathbar -bool true

# 写真アプリ自動openをOFF
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# Disable the CAPS LOCK key
/usr/libexec/PlistBuddy -c "Add com.apple.keyboard.modifiermapping.1452-610-0 array" ~/Library/Preferences/ByHost/.GlobalPreferences.*.plist
/usr/libexec/PlistBuddy -c "Add :com.apple.keyboard.modifiermapping.1452-610-0: dict" ~/Library/Preferences/ByHost/.GlobalPreferences.*.plist
/usr/libexec/PlistBuddy -c "Add com.apple.keyboard.modifiermapping.1452-610-0:0:HIDKeyboardModifierMappingDst integer -1" ~/Library/Preferences/ByHost/.GlobalPreferences.*.plist
/usr/libexec/PlistBuddy -c "Add com.apple.keyboard.modifiermapping.1452-610-0:0:HIDKeyboardModifierMappingSrc integer 0" ~/Library/Preferences/ByHost/.GlobalPreferences.*.plist

# restart
killall Dock
killall SystemUIServer
killall Finder
killall -HUP JapaneseIM
