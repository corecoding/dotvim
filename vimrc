" vim-plug
call plug#begin('~/.vim/bundle')

Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
"Plug 'vim-vdebug/vdebug'
Plug 'Yggdroot/LeaderF'
"Plug 'Valloric/YouCompleteMe'
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'w0rp/ale'
Plug 'vim-scripts/AutoComplPop'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

source ~/.vim/config/bindings.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/haste.vim
source ~/.vim/config/layout.vim
source ~/.vim/config/default.vim
