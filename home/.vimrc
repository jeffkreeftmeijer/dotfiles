" Load plugins from the bundle directory
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible
syntax enable
set ruler
set relativenumber              " show line numbers
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set visualbell                  " Sssshh!
set ttyfast
set laststatus=2
set splitright
set colorcolumn=80

"" Colorscheme
set background=light
colorscheme solarized

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces
set expandtab                   " use spaces, not tabs
set backspace=indent,eol,start  " backspace through everything in insert mode
set autoindent                  " automatically indent

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set scrolloff=3                 " don't show search results as the first line

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Crazy ruby files without .rb extensions
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Podfile,config.ru,.kick} set ft=ruby

" Ignore the .git directory
set wildignore+=.git

" Map <space> to :
nnoremap <space> :

" Use double-<space> to save the file
nnoremap <space><space> :w<cr>

" Leader
let mapleader = ","

" Use double-leader to jump to last file
nnoremap <leader><leader> <c-^>

runtime! config/**/*.vim
