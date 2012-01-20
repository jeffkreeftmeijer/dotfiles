" Quick vertical split
nnoremap <leader>w <C-w>v

" Switch splits with <C-h> & <C-l>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Set the minimal split width
set winwidth=60
set winminwidth=60

" Using <leader>=, toggle the width of the current split. If it's set to 999, it
" takes up as much space as possible, without pushing the other ones under 60
" columns. The other option makes sure all splits are equally wide.
function! SplitToggle()
	if(&winwidth == &winminwidth)
    set winwidth=999
	else
    set winwidth=60
    wincmd =
	endif
endfunc

nnoremap <leader>= :call SplitToggle()<cr>
