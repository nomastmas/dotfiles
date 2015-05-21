"for Vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'
" Browsing filesystem in tree-like manner
Plugin 'scrooloose/nerdtree'
" Git support from Vim
"Plugin 'tpope/vim-fugitive'
" Fancy status bar which is more informative and customizable than standard
Plugin 'bling/vim-airline'
" Syntax checker, also need pip install flake8
Plugin 'scrooloose/syntastic'
" Autocomplete
Plugin 'neocomplcache'
" More python syntax
"Plugin 'Python-Syntax'


"""""""""" Plugins configuration """""""
" NERDTree configuration
" set current dirrectory to recently opened buffer
" !!!WARNING!!! THIS BREAKS SEVERAL FUGUTIVE.vim COMMANDS!!! 
" autocmd BufEnter * lcd %:p:h

" open a NERDTree automatically when vim starts up if no files were
" specified
"autocmd VimEnter * NERDTree
" go to previous window
"autocmd VimEnter * wincmd p

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
""""""""""""""""""""""""""""""""""""""""""
" Airline configuration 

" Need this to enable plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
" for responsiveness
set ttimeoutlen=50
" for having airline appear on single window
set laststatus=2

let g:airline_left_sep = ''
"let g:airline_left_sep = '▶'
let g:airline_right_sep = ''
"let g:airline_right_sep = '◀'
""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""
" Syntastic configuration

" automatically load errors into location list
let g:syntastic_always_populate_loc_list = 1
" check for errors on open
let g:syntastic_check_on_open = 1
""""""""""""""""""""""""""""""""""""""""""""

" required!
filetype plugin indent on

" color scheme
set t_Co=256
colorscheme molokai_custom

set tabstop=4
set shiftwidth=4
set expandtab

" file type specific indenting
filetype indent on
set autoindent
set smarttab
set cindent
" for indenting comments
set cinkeys-=0#

set history=50
set title

" visual whitespace
"set list
"set listchars=tab:>.

" showmatch: show the matching bracket for the last '?'
set showmatch

syntax on
set number

" tab complete
set wildmode=longest,list,full
set wildmenu
" autocompletion hotkey
set wildcharm=<TAB>

" The cursor should stay where you leave it, instead of moving to the first
" non blank of the line
set nostartofline

" Highlight line with cursor
set cursorline

" Show matching brackets
set showmatch

" Make < and > match as well
set matchpairs+=<:>

" Live search. While typing a search command, show where the pattern
set incsearch

" vim will leave 5 lines top and bottom of current line when scrolling
set scrolloff=5

" Numbers of columns to keep to the left and to the right off the screen
set sidescrolloff=10

" ruler at column
"set colorcolumn=80
"highlight ColorColumn ctermbg=red

" Setting up right-hand section(ruller) format
"set rulerformat=%30(%=\:%y%m%r%w\ %l,%c%V\ %P%)

" Disable backups file
set nobackup

" Disable vim common sequense for saving.
" By defalut vim write buffer to a new file, then delete original file
" then rename the new file.
set nowritebackup

" Disable swp files
set noswapfile

" Do not add eol at the end of file.
set noeol

" highlight searches
set hlsearch

" soft word wrap
set wrap linebreak nolist

" load neocomplcache settings
source ~/.vim/.neocomplcache.vim
