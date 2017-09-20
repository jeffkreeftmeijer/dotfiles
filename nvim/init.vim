call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'jeffkreeftmeijer/neovim-sensible'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
call plug#end()

colors dim

" Enable mouse/trackpad scrolling
set mouse=a

" fzf.vim
nnoremap <silent> ,t :Files<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,a :Ag<CR>

" ale
let g:ale_lint_on_text_changed = 'never'
