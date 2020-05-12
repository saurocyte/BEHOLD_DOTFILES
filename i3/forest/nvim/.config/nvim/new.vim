" Completion
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
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
" Tomorrow Night colorscheme
Plug 'Ardakilic/vim-tomorrow-night-theme'
" Recent files menu
Plug 'vim-scripts/mru.vim'
" Start screen
Plug 'mhinz/vim-startify'
" Devicons
Plug 'ryanoasis/vim-devicons'
" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Symbols
Plug 'liuchengxu/vista.vim'
" File explorer
Plug 'Shougo/defx.nvim'
" Formatting
Plug 'sbdchd/neoformat'
" Syntax checking
Plug 'w0rp/ale'
" Show register contents
Plug 'junegunn/vim-peekaboo'
