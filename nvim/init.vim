colors dim

" Enable mouse/trackpad scrolling
set mouse=a

" fzf.vim
nnoremap <silent> ,t :Files<CR>
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,a :Ag<CR>

" ale
let g:ale_lint_on_text_changed = 'never'
