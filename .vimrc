
"Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

"--------------------------------------------------------------------------
"" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#begin(expand('~/.vim/bundle/'))
	  NeoBundleFetch 'Shogo/neobundle.vim'

  filetype plugin indent on     " Required!

" If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
NeoBundleCheck

NeoBundle 'mattn/emmet-vim'
let g:user_emmet_leader_key='<c-t>'


" molokai カラースキーム
NeoBundle 'tomasr/molokai'

call neobundle#end()

set number
syntax on
syntax on
set nohlsearch
set cursorline
colorscheme molokai
set imdisable



set confirm    " 保存されていないファイルがあるときは終了前に保存確認
set hidden     " 保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread   "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない
set iminsert=0 " インサートモードから抜けると自動的にIMEをオフにする
set imsearch=0
set clipboard=unnamed,unnamedplus " OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする


" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000

"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
