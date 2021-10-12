call plug#begin()
	" Completion
	" Status line
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
    let g:lightline = {}
	let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
	let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
	let g:lightline.component_type   = {'buffers': 'tabsel'}
    let g:lightline.colorscheme = 'nord'
	" Sneak motion
	Plug 'justinmk/vim-sneak'
	let g:sneak#s_next = 1
	" Stuff with parenteses
	Plug 'tpope/vim-surround'
	" Recent files menu
	Plug 'vim-scripts/mru.vim'
	" Start screen
	Plug 'mhinz/vim-startify'
	" Devicons
	Plug 'ryanoasis/vim-devicons'
	" Fuzzy finder
	Plug 'junegunn/fzf', { 'do': './install --bin' }
	Plug 'junegunn/fzf.vim'
	" Symbols
	Plug 'liuchengxu/vista.vim'
	" Formatting
	Plug 'sbdchd/neoformat'
	" Syntax checking
	Plug 'dense-analysis/ale'
	" Colors
	Plug 'arcticicestudio/nord-vim'
	" Markdown
	Plug 'plasticboy/vim-markdown'
	" Using '.' for plugins commands
	Plug 'tpope/vim-repeat'
	" Distraction - free mode
	Plug 'junegunn/goyo.vim'
    " Fish syntax
    Plug 'dag/vim-fish'
call plug#end()

nnoremap <C-p> :Files<Cr>
