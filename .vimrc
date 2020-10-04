syntax on                              "Enable sintax coloring

set noerrorbells                       "Disable sounds due to errors
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nowrap
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set relativenumber

set t_Co=256

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Plugin section
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-syntastic/syntastic'
    Plug 'mattn/emmet-vim'
    Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
call plug#end()

filetype plugin on
set omnifunc=syntaxcomplete#Complete
