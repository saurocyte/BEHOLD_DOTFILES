""" Plugins

call plug#begin()
	" Recent files menu
	Plug 'vim-scripts/mru.vim'
	" Status line
	Plug 'itchyny/lightline.vim'
	" Start screen
	Plug 'mhinz/vim-startify'
	" Wiki thing
	Plug 'vimwiki/vimwiki'
	" Onedark theme (from atom)
	Plug 'joshdick/onedark.vim'
	" For creating tables
	Plug 'dhruvasagar/vim-table-mode'
	" Gruvbox theme
	Plug 'morhetz/gruvbox'
	" Sneak motion
	Plug 'justinmk/vim-sneak'
	" Stuff with parenteses
	Plug 'tpope/vim-surround'
	" Color preview
	Plug 'gko/vim-coloresque'
	" Dim inactive panels
	Plug 'blueyed/vim-diminactive'
	" Modified gruvbox lightline theme
	Plug 'jakobgm/lightline-gruvbox.vim', { 'branch': 'patch-1' }  
	" Devicons
	Plug 'ryanoasis/vim-devicons'
	" Distraction - free mode
	Plug 'junegunn/goyo.vim'

call plug#end()

""" Colorscheme

"-> Onedark
" let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1
" colorscheme onedark
" let g:lightline = {
"   \ 'colorscheme': 'onedark',
"   \ }

"-> Gruvbox
colorscheme gruvbox
set background=dark
let g:lightline = {
 \ 'colorscheme': 'gruvbox',
 \ }


""" Keybindings

" Remap ; to :
nnoremap ; :

" Open and close folds with Enter
nnoremap <expr> <cr>   foldlevel(line('.'))  ? "za" : "\<cr>"

""" Look

" If enabled, LineNr, CursorLineNr and CursorLine do not work
set termguicolors

"-> Line numbers
" Enable numbers
set number

" Number columb width
set numberwidth=3

" Non highlighted numbers color
hi LineNr ctermfg=grey

"-> Line highlight
" Line (including numbers) highlight
set cursorline

" Make highlighted number bold
hi CursorLineNr cterm=bold

" Do not show highlight
hi CursorLine cterm=NONE

" Do not show -- Insert --
set noshowmode

"-> Lightline
" Show tabline
set showtabline=2  " always show tabline

""" Formatting

" Closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {<cr><cr>}<up><tab>

" Tab = 4 spaces
set shiftwidth=4
set tabstop=4	

""" Plugin specific



""
" """ - category
" ->  - subcategory
" "   - comment


" Modeline for automatic folding 
"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
