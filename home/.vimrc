"Pathogen
call pathogen#infect()

set nocompatible
syntax enable
set ruler
set number                      " show line numbers
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

nnoremap <space> :
nnoremap <space><space> :w<cr>

" Leader
let mapleader = ","

" Use double-leader to jump to last file
nnoremap <leader><leader> <c-^>

" Clear trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" <Leader>a for :Ack
nnoremap <leader>a :Ack<space>

" Command-T subdirs
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
map <leader>gh :CommandTFlush<cr>\|:CommandT app/helpers<cr>
map <leader>ga :CommandTFlush<cr>\|:CommandT app/assets<cr>
map <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT spec<cr>

" Unimpaired line bubbling
nmap <C-k> [e
nmap <C-j> ]e
vmap <C-k> [egv
vmap <C-j> ]egv

" hjkl bootcamp
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Quick vertical split
nnoremap <leader>w <C-w>v

" Switch splits with <C-h> & <C-l>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
