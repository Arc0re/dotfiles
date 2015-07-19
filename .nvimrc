"""" Arc's nvimrc.
"""" Made in love and suffering
"""" For the best text editor
"""" NeoVim, I guess
"""""""""""""""""""""""""""""""""" \(;,;)
"""""""""""""""""""""""""""""""""" (;,;)/

""""""""""""""""""""
"""" Colors & themes
""""""""""""""""""""

" enables syntax highlighting
syntax enable 

" Enable 256 colors
set t_Co=256

" changing colorscheme
set background=dark " light or dark theme
"colorscheme ir_black
colorscheme iceberg


""""""""""""""""""""
"""" Spaces & tabs
""""""""""""""""""""

set tabstop=2 " number of visual spaces per tab
set softtabstop=2 " number of spaces per tab when editing
set shiftwidth=2
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
set omnifunc=syntaxcomplete#Complete

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

" paste mode, to prevent vim from formatting pasted text
set pastetoggle=<F2>

"""""""""""""""""""
"""" Pathogen
"""""""""""""""""""

"Pathogen plugin manager
execute pathogen#infect()

"" Plugins config for lightline
set laststatus=2
