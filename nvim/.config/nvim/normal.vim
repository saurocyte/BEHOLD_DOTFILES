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
call plug#end()

nnoremap <C-p> :Files<Cr>
