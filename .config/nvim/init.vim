" 行番号を表示
set number
" スワップファイルを作成しない
set noswapfile
" インデントをスペース4つに設定
set tabstop=4
set shiftwidth=4
" クリップボードを有効化
set clipboard=unnamed,unnamedplus

let $CACHE = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XGD_CACHE_HOME
let $CONFIG = empty($XDG_CACHE_HOME) ? expand('$HOME/.config') : $XGD_CACHE_HOME
let $DATA = empty($XDG_CACHE_HOME) ? expand('$HOME/.local/share') : $XGD_CACHE_HOME

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  "toml file directory
  let s:toml_dir = expand('$CONFIG/dein')
  
  "load toml files
  call dein#load_toml(s:toml_dir. '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:toml_dir. '/lazy.toml' , {'lazy': 1})
  call dein#load_toml(s:toml_dir. '/python.toml', {'lazy': 1})
  call dein#load_toml(s:toml_dir. '/ruby.toml', {'lazy': 1})
  call dein#load_toml(s:toml_dir. '/r.toml', {'lazy': 1})
  
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

"Start plugins Scripts--------------------
" write plugins script if u need
"End plugins Scripts----------------------

