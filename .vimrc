set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab
set nu
set wildmode=longest:full,full
set laststatus=2
set clipboard=unnamed
set backspace=2
set modelines=1

"Highlight cursor line
set cursorline
hi CursorLine ctermbg=black cterm=NONE ctermfg=NONE

set statusline +=%F
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total line
set statusline +=%1*%4v\ %*             "virtual column number

autocmd BufRead,BufNewFile *.js6 setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufRead,BufNewFile *.js6 setfiletype javascript
autocmd BufRead,BufNewFile *.jsx setlocal ts=4 sw=4 sts=4 expandtab
autocmd BufRead,BufNewFile *.jsx setfiletype javascript

execute pathogen#infect()
syntax on
filetype plugin on
"filetype plugin indent on
"
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
