set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set expandtab
set nu
set wildmode=longest:full,full
set laststatus=2
set clipboard=unnamed
set backspace=2

set statusline +=%F
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total line
set statusline +=%1*%4v\ %*             "virtual column number

execute pathogen#infect()
syntax on
filetype plugin on
"filetype plugin indent on
