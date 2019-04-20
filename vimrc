" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/AutoComplPop'
Plug 'ryanoasis/vim-devicons'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

if !isdirectory($HOME . "/.vim/backup")
    call mkdir($HOME . "/.vim/backup", "p", 0700)
endif

if !isdirectory($HOME . "/.vim/bundle")
    call mkdir($HOME . "/.vim/bundle", "p", 0700)
    :PlugInstall
endif

source ~/.vim/config/bindings.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/haste.vim
source ~/.vim/config/layout.vim
source ~/.vim/config/default.vim
