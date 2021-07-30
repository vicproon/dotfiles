" be iMproved
set nocompatible
" required for Vundle
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Rainbow_CSV -- colored CSV and manipulations
Plugin 'mechatroner/rainbow_csv'

" NERDTree
Plugin 'preservim/nerdtree' 

" Markdown plugin
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Disable markdown folding for plugin
let g:vim_markdown_folding_disabled = 1 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" display line numbers
set nu

" enable unicode
set encoding=utf-8

" indentation
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" disable line wrapping
set nowrap

" opening files in the same directory
cabbr <expr> %% expand('%:p:h')

" these lines open vimdiff with color scheme that remains c++ #include directives visible
" and also ignore whitespace changes
if &diff
    colorscheme elflord
    set diffopt+=iwhite
endif

" automatically search for thirdparty tags
set tags+=/usr/include/**/tags
set tags+=/usr/local/include/**/tags

