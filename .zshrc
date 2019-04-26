bindkey -v
[[ -d ~/.rbenv  ]] && \
eval "$(direnv hook zsh)"
eval "$(rbenv init -)"
# Sの情報を取得するzshの便利関数 vcs_infoを使う
autoload -Uz vcs_info

# プロンプトのカラー
autoload -U promptinit
promptinit
prompt adam1

# ls
export LSCOLORS=gxfxcxdxbxegedabagacad

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

# Alias　

alias la='ls -a -G'
alias ll='ls -l -G'
alias st= 'tig status'
alias pull='git pull origin'
alias push='git push'
alias co='git checkout'
alias tree='tree -L 2'
alias grh='git reset --hard'

#=============================
## source zsh-syntax-highlighting
##=============================
if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## LESS setting
export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
export LESS=" -R "

function git-root() {
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    cd `pwd`/`git rev-parse --show-cdup`
  fi
}
