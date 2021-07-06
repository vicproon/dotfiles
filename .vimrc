" be iMproved
set nocompatible              

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

