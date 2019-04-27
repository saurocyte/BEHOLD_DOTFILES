source ~/.config/nvim/minimal.vim

" Status line
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsSnippetsDir='~/.config/nvim/mysnippets'
let g:UltiSnipsSnippetDirectories=['mysnippets']
filetype plugin indent on
" Latex
Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
