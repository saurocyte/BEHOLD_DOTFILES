"----->keybindings"
nnoremap ; :

"----->tab = 4 spaces
set shiftwidth=4
set tabstop=4	
			
"----->line numbers
set number
set numberwidth=3
hi LineNr ctermfg=grey

"----->line highlight
set cursorline
hi CursorLineNr cterm=bold
hi CursorLine cterm=NONE

"----->Vim plug plugins
call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'vim-syntastic/syntastic'
	Plug 'vim-scripts/mru.vim'
	Plug 'itchyny/lightline.vim'
	Plug 'mhinz/vim-startify'
	Plug 'jistr/vim-nerdtree-tabs'
	Plug 'tpope/vim-surround'
	Plug 'junegunn/goyo.vim'
	Plug 'vimwiki/vimwiki'
call plug#end()
