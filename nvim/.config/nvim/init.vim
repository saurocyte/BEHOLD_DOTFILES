"
"   ██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
"   ██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
"   ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
"   ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
"   ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
"
""" Plugins
" Instal vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

let conf = 'normal'
if exists('g:vscode')
    let conf = 'vscode'
endif
if conf == 'minimal'
	source ~/.config/nvim/minimal.vim
endif
if conf == 'normal'
	source ~/.config/nvim/normal.vim
endif
if conf == 'vscode'
    source ~/.config/nvim/vscode.vim
endif

""" Functions
" Close buffer without closing split 
function s:Kwbd(kwbdStage)
  if(a:kwbdStage == 1)
    if(!buflisted(winbufnr(0)))
      bd!
      return
    endif
    let s:kwbdBufNum = bufnr("%")
    let s:kwbdWinNum = winnr()
    windo call s:Kwbd(2)
    execute s:kwbdWinNum . 'wincmd w'
    let s:buflistedLeft = 0
    let s:bufFinalJump = 0
    let l:nBufs = bufnr("$")
    let l:i = 1
    while(l:i <= l:nBufs)
      if(l:i != s:kwbdBufNum)
        if(buflisted(l:i))
          let s:buflistedLeft = s:buflistedLeft + 1
        else
          if(bufexists(l:i) && !strlen(bufname(l:i)) && !s:bufFinalJump)
            let s:bufFinalJump = l:i
          endif
        endif
      endif
      let l:i = l:i + 1
    endwhile
    if(!s:buflistedLeft)
      if(s:bufFinalJump)
        windo if(buflisted(winbufnr(0))) | execute "b! " . s:bufFinalJump | endif
      else
        enew
        let l:newBuf = bufnr("%")
        windo if(buflisted(winbufnr(0))) | execute "b! " . l:newBuf | endif
      endif
      execute s:kwbdWinNum . 'wincmd w'
    endif
    if(buflisted(s:kwbdBufNum) || s:kwbdBufNum == bufnr("%"))
      execute "bd! " . s:kwbdBufNum
    endif
    if(!s:buflistedLeft)
      set buflisted
      set bufhidden=delete
      set buftype=
      setlocal noswapfile
    endif
  else
    if(bufnr("%") == s:kwbdBufNum)
      let prevbufvar = bufnr("#")
      if(prevbufvar > 0 && buflisted(prevbufvar) && prevbufvar != s:kwbdBufNum)
        b #
      else
        bn
      endif
    endif
  endif
endfunction
command! Kwbd call s:Kwbd(1)
nnoremap <silent> <Plug>Kwbd :<C-u>Kwbd<CR>
""" Keybindings
" Langmap
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" F2 toggles line numbers
nnoremap <F2> :set nonumber!<CR>

" F3 
nnoremap <C-c> noh<CR>

" Every yank is + yank
set clipboard=unnamedplus

" Closing brackets
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap { {}<left>

" Tabs
noremap <C-Tab> :<C-U>next<CR>
inoremap <C-Tab> <C-\><C-N>:next<CR>
cnoremap <C-Tab> <C-C>:next<CR>
noremap <C-S-Tab> :<C-U>previous<CR>
inoremap <C-S-Tab> <C-\><C-N>:previous<CR>
cnoremap <C-S-Tab> <C-C>:previous<CR>

" Remap ; to :
noremap ; :

" Open and close folds with Enter
noremap <expr> <cr> foldlevel(line('.')) ? "za" : "\<cr>"

" Buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
map ga :ba<cr>
nmap gc <Plug>Kwbd

""" Look
" gui* is cterm for truecolors
set termguicolors
set background=dark

" Line numbers
" Enable numbers
set number
" Number column width
set numberwidth=3
" Non highlighted numbers color
hi LineNr ctermfg=grey guifg=grey

" Line highlight
" Line (including numbers) highlight
set cursorline
" Make highlighted number bold
hi CursorLineNr cterm=bold gui=bold
" Do not show highlight
hi CursorLine cterm=NONE guibg=NONE
" Do not show -- Insert --
set noshowmode

" Lightline
" Show tabline
set showtabline=2  " always show tabline

" Fold highlight
hi Folded guibg=NONE

" colorscheme gruvbox

""" Formatting
set modelineexpr
set autoindent
set smartindent
syntax enable
filetype plugin indent on
" Tab = 4 spaces
set shiftwidth=4
set tabstop=4	
" Disable wrapping
set nowrap
" Current dir = file dir
" set autochdir
" Autosave
set autowrite
" Tabs to spaces
set expandtab
""
" """ - category
" "   - comment


" Modeline for automatic folding 
"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='
