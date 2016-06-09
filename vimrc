" general
set history=10000                       " record millennia of commands
set autoread                            " reload file when changed externally
set nocompatible                        " enables non vi compatible features
set modeline                            " enable modeline support

set nobackup                            " no back ups after close
set nowritebackup                       " no back ups while writing
set noswapfile                          " no swp file

set undodir=~/.vim/backups              " keep undo history across session
set undofile                            " save undo history to file


" UI
colorscheme molokai_custom
set number                              " line numbers
set wildmenu                            " tab completion for menu
set wildmode=longest,list,full
set wildcharm=<TAB>                     " autocompletion hotkey
set ch=2                                " command line height
set backspace=indent,eol,start          " backspace over anything in insert mode
set t_Co=256                            " use 256 colors
set laststatus=2                        " always status line
set shortmess=a                         " reduce length of messages
set whichwrap=<,>,h,l,[,]               " allow keys to cross line boundries


" tabs and spaces
set tabstop=4                           " 4 space tabs
set expandtab                           " use tabs for space
set shiftwidth=4
filetype indent on                      " filetype indenting
set autoindent
set smarttab
set cindent
set cinkeys-=0#                         " for indenting comments


" visual
set nostartofline                       " prevent cursor from changing column when jumping lines
set cursorline                          " highlight line with cursor
set list lcs=tab:>·,trail:·,eol:$       " visualize spaces and tabs
set showmatch                           " highlight brackets and braces
set matchpairs+=<:>                     " highlight < and > as well
set ignorecase                          " ignore case when searching
set incsearch                           " incremental search
set visualbell                          " no beeping
set scrolloff=5                         " buffer 5 lines of current line when scrolling
set hlsearch                            " highlight searches
set wrap linebreak nolist               " soft word wrap
set noeol                               " no eol at end of file
set title                               " title of window 
syntax on

" Plugin Configs

" Vundle
filetype off                            " required!

set rtp+=~/.vim/bundle/vundle/
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'                  " required! let vundle manage vundle
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'            " browse filesystem in tree manner
Plugin 'scrooloose/syntastic'           " syntax checker
Plugin 'neocomplcache'                  " autocomplete
Plugin 'Yggdroot/indentLine'            " display spaces and tabs

call vundle#end()            " plugins must be added before this line
filetype plugin indent on    " required

" NERDTree
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Syntastic
let g:syntastic_always_populate_loc_list = 1 " automatically load errors into location list
let g:syntastic_check_on_open = 1       " check for errors on open

" Neocomplcache
source ~/.vim/.neocomplcache.vim
