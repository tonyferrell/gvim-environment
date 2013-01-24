set backspace=2
set ts=4
set sw=4
set expandtab
set backupdir=C:\Users\tferrell\VimSwap
set directory=C:\Users\tferrell\VimSwap
syntax on
set number
set smartindent

" Ruby options
let ruby_highlight_all = 1

function! s:set_ruby_indents()
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
endfunction

function! s:set_default_settings()
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
endfunction

" Ruby options
autocmd BufNewFile,BufEnter *.{rb} call s:set_ruby_indents()
autocmd BufLeave *.{rb} call s:set_default_settings()

autocmd BufNewFile,BufEnter *.{haml} call s:set_ruby_indents()
autocmd BufLeave *.{haml} call s:set_default_settings()
color desert
