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

execute pathogen#infect()
syntax on
filetype plugin on
"filetype plugin indent on
