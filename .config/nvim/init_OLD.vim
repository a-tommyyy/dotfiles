" show row number
set number

" disable swapfile
set noswapfile

" tab
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smarttab

" edit
set smartindent
set showmatch                                   "閉じカッコが入力時対応するカッコを強調
set backspace=indent,eol,start                  "バックスペースで各種消せるよう
set virtualedit=block

" Search
set ignorecase                                  "検索時大文字小文字を区別しない
set smartcase                                   "大文字を含めた検索はその通りに検索する
set incsearch                                   "インクリメンタルサーチを行う
set nohlsearch                                  "検索結果をハイライト表示しない
set wrapscan                                    "循環検索オン
set infercase                                   "補完の際大文字小文字を区別しない
nnoremap <silent> <ESC> <ESC>:noh<CR>

" Other
set wildmenu                                    "ナビゲーションバーを有効に
set tw=0                                        "自動改行オフ
set whichwrap=b,s,h,l,<,>,[,]                   "カーソル行を行頭、行末で止まらないように
set cursorline                                  "カーソル行をハイライト
set clipboard=unnamed,unnamedplus               "クリップボードをWindowsと連携する
set hidden                                      "変更中のでも保存せずで他のファイルを表示
set number                                      "行番号を表示する
set switchbuf=useopen                           "新しく開く代りイに既に開いているバッファを
set vb t_vb=                                    "ビープ音を消す
set novisualbell
set nostartofline                               "移動コマンドを使った時行頭に移動しない
set matchpairs& matchpairs+=<:>                 "<>を対応括弧ペアに
set matchtime=3                                 "対応括弧表示を3秒に
set wrap                                        "ウィンドウより長い行は折り畳む
set textwidth=0                                 "テキストの最大幅を無効に
set shiftround                                  "インデントをshiftwidthの倍数に
set history=10000                               "コマンド、検索の履歴を１万個まで
set mouse=a                                     "マウスモード有効
inoremap jj <ESC>                               "入力モード中に素早くjjと入力した時はESC
let g:indent_guides_enable_on_vim_startup = 1   " Vim を立ち上げたと時に、自動的にvim-indent-guidesをオンにする



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
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"Start plugins Scripts--------------------
" write plugins script if u need
"End plugins Scripts----------------------

