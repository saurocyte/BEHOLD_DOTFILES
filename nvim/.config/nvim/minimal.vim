call plug#begin()
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
call plug#end()
