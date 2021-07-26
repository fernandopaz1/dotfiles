syntax on                              "Enable sintax coloring

set noerrorbells                       "Disable sounds due to errors
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=79
set expandtab
set smartindent
set nowrap
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set background=dark
set number                      "The rest are relative to current
set relativenumber                      "The rest are relative to current
set autoindent
set cursorline
set wrap
set ttyfast
set laststatus=2



set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Plugin section
call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-syntastic/syntastic'
    Plug 'mattn/emmet-vim'
    Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'pangloss/vim-javascript'    " JavaScript support
    Plug 'leafgarland/typescript-vim' " TypeScript syntax
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'     " Themes for airline
    Plug 'flazz/vim-colorschemes'             " Colorschemes
    Plug 'vim-scripts/AutoComplPop'           " menu de autocompetad          

    call plug#end()

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

"""""""""""" Start Powerline Settings """"""""""""""""

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme spring-night " set color scheme
    endif
endif

""""""""""" END of PowerLine Settings  """""""""""""""


"=====================================================
"" AirLine settings
"=====================================================
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
""""""""""""""""" END of AirLine Settings """"""""""""
colorscheme spring-night

set complete+=kspell
set completeopt=menuone,longest,preview

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
:imap ii <Esc>

