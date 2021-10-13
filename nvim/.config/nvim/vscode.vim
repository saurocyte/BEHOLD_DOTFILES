call plug#begin()
    " Stuff with parenteses
    Plug 'tpope/vim-surround'
	" Colors
	Plug 'arcticicestudio/nord-vim'
call plug#end()

" Langmap
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Tabs
noremap <C-Tab> :<C-U>next<CR>
inoremap <C-Tab> <C-\><C-N>:next<CR>
cnoremap <C-Tab> <C-C>:next<CR>
noremap <C-S-Tab> :<C-U>previous<CR>
inoremap <C-S-Tab> <C-\><C-N>:previous<CR>
cnoremap <C-S-Tab> <C-C>:previous<CR>

" Remap ; to :
noremap ; :

" Open and close folds with Enter
noremap <expr> <cr>   foldlevel(line('.'))  ? "za" : "\<cr>"

" Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
map ga :ba<cr>
nmap gc <Plug>Kwbd

" Current dir = file dir
set autochdir
