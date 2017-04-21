
export PATH=$PATH:/Users/vv001292/Library/Android/sdk/platform-tools
export M2_HOME=/usr/local/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin
export M3_HOME=/usr/local/apache-maven-3.5.0
export M3=$M3_HOME/bin
export PATH=$PATH:$M3_HOME/bin
export STORE_PASSWORD=R8cBqF7yvian
export KEY_ALIAS=service_safari
export KEY_PASSWORD=3QBG4JqugbHL
export ANDROID_HOME=/Users/vv001292/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home
[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:::${PATH} && \
export EDITOR='vim'
eval "$(direnv hook zsh)"
export GOROOT=""
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin
export LSCOLORS=gxfxcxdxbxegedabagacad
eval "$(rbenv init -)"
# Sの情報を取得するzshの便利関数 vcs_infoを使う
autoload -Uz vcs_info

# プロンプトのカラー
autoload -U promptinit
promptinit
prompt adam1

# ls
export LSCOLORS=exfxcxdxbxegedabagacad

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


# 表示フォーマットの指定
# %b ブランチ情報
# %a アクション名(mergeなど)
zstyle ':vcs_info:*' formats '[%b]'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

# バージョン管理されているディレクトリにいれば表示，そうでなければ非表示
RPROMPT="%1(v|%F{green}%1v%f|)"


# 補完
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# ディレクトリ名だけでcdする
setopt auto_cd

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# ^R で履歴検索をするときに * でワイルドカードを使用出来るようにする
bindkey '^R' history-incremental-pattern-search-backward

#　エイリアス

alias la='ls -a -G'
alias ll='ls -l -G'
alias st= 'tig status'
alias pull='git pull origin'
alias push='git push'
alias co='git checkout'
alias tree='tree -L 2'

[[ -s "/Users/vv001292/.gvm/scripts/gvm" ]] && source "/Users/vv001292/.gvm/scripts/gvm"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/vv001292/.sdkman"
[[ -s "/Users/vv001292/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/vv001292/.sdkman/bin/sdkman-init.sh"
