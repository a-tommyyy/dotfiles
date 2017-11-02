" 行番号を表示
set number
" スワップファイルを作成しない
set noswapfile
" インデントをスペース4つに設定
set tabstop=4
 
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
" NerdTree
"  shortcut Ctrl + e
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" Denite
nmap [denite] <Nop>
map <C-j> [denite]

" プロジェクト内のファイル検索
nmap <silent> [denite]<C-P> :<C-u>Denite file_rec -highlight-mode-insert=Search<CR>
" バッファに展開中のファイル検索
nmap <silent> [denite]<C-B> :<C-u>Denite buffer -highlight-mode-insert=Search<CR>
" ファイル内の関数/クラス等の検索
nmap <silent> [denite]<C-O> :<C-u>Denite outline -highlight-mode-insert=Search<CR>
" dotfiles配下をカレントにしてfile_rec起動
nmap <silent> [denite]<C-V> :<C-u>call denite#start([{'name': 'file_rec', 'args': ['~/.dotfiles']}]) -highlight-mode-insert=Search=Search<CR>

" 上下移動を<C-N>, <C-P>
call denite#custom#map('normal', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('normal', '<C-P>', '<denite:move_to_previous_line>')
call denite#custom#map('insert', '<C-N>', '<denite:move_to_next_line>')
call denite#custom#map('insert', '<C-P>', '<denite:move_to_previous_line>')
" 入力履歴移動を<C-J>, <C-K>
call denite#custom#map('insert', '<C-J>', '<denite:assign_next_text>')
call denite#custom#map('insert', '<C-K>', '<denite:assign_previous_text>')
" 横割りオープンを`<C-S>`
call denite#custom#map('insert', '<C-S>', '<denite:do_action:split>')
" 縦割りオープンを`<C-I>`
call denite#custom#map('insert', '<C-I>', '<denite:do_action:vsplit>')
" タブオープンを`<C-O>`
call denite#custom#map('insert', '<C-O>', '<denite:do_action:tabopen>')

" file_rec検索時にfuzzymatchを有効にし、検索対象から指定のファイルを除外
call denite#custom#source(
    \ 'file_rec', 'matchers', ['matcher_fuzzy', 'matcher_project_files', 'matcher_ignore_globs'])

" 検索対象外のファイル指定
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

"End plugins Scripts----------------------

