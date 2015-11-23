"""" Arc's .vimrc.
"""" (;,;)/

""""""""""""""""""""
"""" Colors & themes
""""""""""""""""""""

" enables syntax highlighting
syntax enable

" Enable 256 colors
set t_Co=256

" changing colorscheme
colorscheme iceberg

""""""""""""""""""""
"""" Spaces & tabs
""""""""""""""""""""

set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces per tab when editing
set shiftwidth=4
set expandtab " tabs are spaces

""""""""""""""""""""
"""" UI settings
""""""""""""""""""""

" displays line numbers
set number

" highlights current line
set cursorline

" allows auto indent depending on the file
filetype plugin indent on

" allows reload of the file if its modified elsewhere
set autoread

" sharing clipboard between OS and Vim
set clipboard=unnamed

" highlighting searches
set hlsearch

"""""""""""""""""""
"""" Vim behaviour
"""""""""""""""""""

" allows :e /file to hide current buffer instead of killing it
set hidden

" no backup and swap
set nobackup
set noswapfile
set autoindent

