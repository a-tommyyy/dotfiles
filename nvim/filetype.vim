augroup filetypedetect
  au BufRead, BufNewFile *.rb *.erb setfiletype ruby
augroup END

" digファイル
autocmd BufNewFile,BufRead *.dig set filetype=yaml
autocmd Syntax yaml setl indentkeys-=<:> indentkeys-=0#

" liquidファイル
autocmd BufNewFile,BufRead *.liquid set filetype=yaml
autocmd Syntax yaml setl indentkeys-=<:> indentkeys-=0#

" tfファイル
autocmd BufNewFile,BufRead *.tf set filetype=terraform
autocmd Syntax yaml setl indentkeys-=<:> indentkeys-=0#
