call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'elixir-lang/vim-elixir'
Plug 'jeffkreeftmeijer/neovim-sensible'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-liquid'
call plug#end()

colors dim

" fzf.vim
nnoremap <silent> ,t :Files<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,a :Ag<CR>

" tabs
set expandtab
set shiftwidth=2

" list
set list
set listchars=tab:→→,trail:·
