"----->Vim plug plugins
call plug#begin()
	Plug 'vim-scripts/mru.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mhinz/vim-startify'
	Plug 'vimwiki/vimwiki'
	"Plug 'Valloric/YouCompleteMe', {'do': './install --all'} 
	Plug 'https://github.com/joshdick/onedark.vim'
	"Plug 'w0rp/ale'
	Plug 'dhruvasagar/vim-table-mode'
call plug#end()

"----->Keybindings
nnoremap ; :

"----->Tab = 4 spaces
set shiftwidth=4
set tabstop=4	
			
"-----Line numbers
set number
set numberwidth=3
hi LineNr ctermfg=grey		"Numbers color

"----->Line highlight
set cursorline				"Line (including numbers) highlight	
hi CursorLineNr cterm=bold  "Make highlighted number bold
hi CursorLine cterm=NONE	"Do not show highlight

"----->Colorscheme
"""if termguicolors is enabled, LineNr, CursorLineNr and CursorLine can be disabled
"set termguicolors
"-->Onedark
"let g:onedark_termcolors=256
"let g:onedark_terminal_italics=1
"colorscheme onedark
"let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

"----->Plugin specific
