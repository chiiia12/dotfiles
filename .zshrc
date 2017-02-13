# adb shellのパス通し
export PATH=$PATH:/Users/vv001292/Library/Android/sdk/platform-tools:$HOME/go/third-party:$HOME/go/my-project
export M2_HOME=~/Documents/project/development/apps/maven/apache-maven-2.2.1
export PATH=$PATH:$M2_HOME/bin
export STORE_PASSWORD=R8cBqF7yvian
export KEY_ALIAS=service_safari
export KEY_PASSWORD=3QBG4JqugbHL
export ANDROID_HOME=/Users/vv001292/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_92.jdk/Contents/Home
[[ -d ~/.rbenv  ]] && \
export PATH=${HOME}/.rbenv/bin:${PATH} && \
export GOPATH=$HOME/go/third-party:$HOME/go/my-project

eval "$(rbenv init -)"
# Sの情報を取得するzshの便利関数 vcs_infoを使う
autoload -Uz vcs_info

#PS1="%{$fg[green]%}%m%(!.#.$) %{$reset_color%}"
autoload colors
colors
PROMPT="%{$fg[cyan]%}[vv001292@CA1306 %1~]%(!.#.$) %{$reset_color%}"

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

