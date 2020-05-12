call plug#begin()
	" Completion
	Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~ '\s'
	endfunction
	inoremap <silent><expr> <Tab>
	      \ pumvisible() ? "\<C-n>" :
	      \ <SID>check_back_space() ? "\<Tab>" :
	      \ coc#refresh()
	" Status line
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
	let g:lightline 	     		 = {}
	let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
	let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
	let g:lightline.component_type   = {'buffers': 'tabsel'}
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
	let g:airline#extensions#ale#enabled = 1
	let g:ale_enabled = 1
	" Colors
	Plug 'arcticicestudio/nord-vim'
	" Markdown
	Plug 'plasticboy/vim-markdown'
	" Using '.' for plugins commands
	Plug 'tpope/vim-repeat'
call plug#end()

nnoremap <C-p> :Files<Cr>
