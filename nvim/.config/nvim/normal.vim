call plug#begin()
    " Status line
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'shinchu/lightline-gruvbox.vim'
    let g:lightline = {}
    let g:lightline.tabline          = {'left': [['buffers']]}
    let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
    let g:lightline.component_type   = {'buffers': 'tabsel'}
    let g:lightline.colorscheme      = 'gruvbox'
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
"    " Formatting
"    Plug 'sbdchd/neoformat'
"    " Syntax checking
"    Plug 'dense-analysis/ale'
    " Colors
    Plug 'arcticicestudio/nord-vim'
    Plug 'morhetz/gruvbox'
    " Using '.' for plugins commands
    Plug 'tpope/vim-repeat'
    " Distraction free mode
    Plug 'junegunn/goyo.vim'
	" Status line
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
    let g:lightline                  = {}
    let g:lightline.tabline          = {'left': [['buffers']], 'right': [[]]}
    let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
    let g:lightline.component_type   = {'buffers': 'tabsel'}
    " let g:lightline.colorscheme = 'nord'
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
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
    ". for plugins"
	Plug 'tpope/vim-repeat'
    " LSP
    Plug 'neovim/nvim-lspconfig'
    " TreeSitter
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
    " Colors
    Plug 'bluz71/vim-moonfly-colors'
    " Indent lines
    Plug 'Yggdroot/indentLine'
    " Aligning text
    Plug 'godlygeek/tabular'
call plug#end()

colorscheme moonfly
lua require'lspconfig'.hls.setup{}
luafile /home/boi/.config/nvim/lsp_bindings.lua
