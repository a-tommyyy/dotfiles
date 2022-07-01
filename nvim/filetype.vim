augroup filetypedetect
  au BufRead, BufNewFile *.rb *.erb setfiletype ruby
augroup END

" digファイル
autocmd BufNewFile,BufRead *.dig set filetype=yaml
autocmd Syntax yaml setl indentkeys-=<:> indentkeys-=0#
