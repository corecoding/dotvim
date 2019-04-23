" vim-plug
let plugPath = $HOME . "/.vim/bundle"
call plug#begin(plugPath)

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

if !isdirectory(plugPath)
    call mkdir(plugPath, "p", 0700)
    :PlugInstall
endif

" auto update plugins every 15 days
if strftime('%s') - 1296000 > getftime(plugPath)
    :PlugUpdate
    call system('touch ' . plugPath)
endif

source ~/.vim/config/bindings.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/haste.vim
source ~/.vim/config/layout.vim
source ~/.vim/config/default.vim
