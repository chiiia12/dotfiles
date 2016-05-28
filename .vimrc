"Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

"--------------------------------------------------------------------------
"" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim/
	  set rtp+=~/.vim/bundle/Bundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shogo/neobundle.vim'

filetype plugin indent on     " Required!

" If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
NeoBundleCheck
NeoBundle 'mattn/emmet-vim'

NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'Chiel92/vim-autoformat'

" lifelog
NeoBundle 'wakatime/vim-wakatime'

NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

" keymapping
noremap <D-¬> :Autoformat<CR>
noremap <D-1> :NERDTree<CR>
let g:user_emmet_leader_key='<c-t>'

set number
syntax on
syntax on
set nohlsearch
set cursorline
let g:lucius_style='dark'
colorscheme lucius 
set imdisable



set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない
set noimdisable " インサートモードから抜けると自動的にIMEをオフにするe
set iminsert=0 
set imsearch=0
set clipboard=unnamed,unnamedplus " OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set backspace=indent,eol,start

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

