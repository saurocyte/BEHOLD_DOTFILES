source ~/.config/nvim/normal+complete.vim

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'
" Show indent level
Plug 'Yggdroot/indentLine'
" Diffs
Plug 'mhinz/vim-signify'
" C++ completions
Plug 'Shougo/deoplete-clangx', { 'do': ':UpdateRemotePlugins' }
" Tagbar
Plug 'majutsushi/tagbar'
" C# 
Plug 'OmniSharp/omnisharp-vim'
" Git
Plug 'tpope/vim-fugitive'
" Tree explorer
Plug 'scrooloose/nerdtree'
" Go
Plug 'fatih/vim-go'
" Emmet
Plug 'mattn/emmet-vim'
" New file manager
Plug 'dylanaraps/fff.vim'
" JS
Plug 'pangloss/vim-javascript'
" Snippets
Plug 'Shougo/neosnippet.vim'
" Show indent level
Plug 'Yggdroot/indentLine'
" Diffs
Plug 'mhinz/vim-signify'
" C++ completions
Plug 'Shougo/deoplete-clangx', { 'do': ':UpdateRemotePlugins' }
" NERDTree
autocmd VimEnter * TagbarToggle
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd w
