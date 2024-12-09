syntax on
set number
set relativenumber

set showcmd
set wildmenu

set hlsearch
set incsearch
set smartcase

" auto pairing
inoremap { {}<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

nnoremap <silent> x :call RemovePair()<CR>
xnoremap <silent> x :call RemovePair()<CR>

function! RemovePair()
  if getline('.')[col('.') - 2] =~ '[({["'']' && getline('.')[col('.') - 1] =~ '[)}]"'']'
    execute "normal! 2x"
  else
    execute "normal! x"
  endif
endfunction


call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

call plug#end()
