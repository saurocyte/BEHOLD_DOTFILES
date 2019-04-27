"
"   ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
"   ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
"   ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
"   ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
"   ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"
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
	" Org mode
	Plug 'jceb/vim-orgmode'

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
"colorscheme gruvbox
"let g:lightline = {
" \ 'colorscheme': 'gruvbox',
" \ }

""" Keybindings

" Closing brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Remap ; to :
nnoremap ; :

" Open and close folds with Enter
nnoremap <expr> <cr>   foldlevel(line('.'))  ? "za" : "\<cr>"

""" Look

" If enabled, LineNr, CursorLineNr and CursorLine do not work without colorscheme
"set termguicolors

set background=dark

"-> Line numbers
" Enable numbers
set number

" Number column width
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

"-> Fold highlight
hi Folded ctermbg=NONE

""" Formatting

set autoindent
set smartindent

" Tab = 4 spaces
set shiftwidth=4
set tabstop=4	

""" Plugin specific
"-> Airline
let g:airline#extensions#tabline#formatter='default'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_buffers=1
let g:airline#extensions#tabline#show_tabs=0


""
" """ - category
" ->  - subcategory
" "   - comment


" Modeline for automatic folding 
"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
