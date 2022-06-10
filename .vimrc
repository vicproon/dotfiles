set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree' 
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

" Rainbow_CSV -- colored CSV and manipulations
Plugin 'mechatroner/rainbow_csv'


Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rust-lang/rust.vim.git'
Plugin 'arzg/vim-rust-syntax-ext'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'voldikss/vim-floaterm'

" Behold, YCM
Plugin 'ycm-core/YouCompleteMe'

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

let g:vim_markdown_folding_disabled = 1

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
    colorscheme evening 
    set diffopt+=iwhite
endif

" automatically search for thirdparty tags
set tags+=/usr/include/**/tags
set tags+=/usr/local/include/**/tags


" multisplit scroll of one document
" taken from here https://vim.fandom.com/wiki/View_text_file_in_two_columns
:noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

" NERDTree stuff:
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * if !&diff | NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" YCM setup
let g:ycm_clangd_binary_path = '/usr/local/bin/clangd'
let g:ycm_clangd_args = ['-j=2']

