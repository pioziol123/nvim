"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugged')
Plug('tpope/vim-fugitive')
Plug('sainnhe/sonokai')
call plug#end()

set statusline+=\ %f
set statusline+=%{FugitiveStatusline()}  
set statusline+=\ %c:%l

if has('termguicolors')
  set termguicolors
endif
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai
