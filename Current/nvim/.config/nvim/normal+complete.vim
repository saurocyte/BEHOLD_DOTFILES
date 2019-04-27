source ~/.config/nvim/normal.vim

" Status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Show register contents
Plug 'junegunn/vim-peekaboo'
" GLSL syntax highlighting
Plug 'tikhomirov/vim-glsl'
" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'
" Linting
Plug 'w0rp/ale'
" Autocompleteion
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/deoplete-clangx', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
set completeopt=longest,menuone
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
