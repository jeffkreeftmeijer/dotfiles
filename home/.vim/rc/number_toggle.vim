" Toggle from number to relativenumber with <C-n>
function! NumberToggle()
	if(&rnu == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>
