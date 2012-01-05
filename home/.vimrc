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

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby

" Clear trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Map <space> to :
nnoremap <space> :

" Use double-<space> to save the file
nnoremap <space><space> :w<cr>

" Leader
let mapleader = ","

" Use double-leader to jump to last file
nnoremap <leader><leader> <c-^>

source ~/.vim/rc/ack.vim
source ~/.vim/rc/command_t.vim
source ~/.vim/rc/hjkl.vim
source ~/.vim/rc/number_toggle.vim
source ~/.vim/rc/replace_paste.vim
source ~/.vim/rc/splits.vim
source ~/.vim/rc/syntastic.vim
source ~/.vim/rc/unimpaired.vim
