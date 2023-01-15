" vim-plug initialization
let plugPath = $HOME . "/.vim/bundle"
call plug#begin(plugPath)

Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
"Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/AutoComplPop'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'

" Use release branch (recommend)
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" initialize plugin system
call plug#end()

" make sure backup directory exists
if !isdirectory($HOME . "/.vim/backup")
    call mkdir($HOME . "/.vim/backup", "p", 0700)
endif

" make sure path for vim-plug exists
if !isdirectory(plugPath)
    call mkdir(plugPath, "p", 0700)
    :PlugInstall
endif

" auto update plugins every 15 days
if strftime('%s') - 1296000 > getftime(plugPath)
    call system('git -C ' . $HOME . '/.oh-my-zsh/custom/themes/powerlevel10k pull')
    call system('touch ' . plugPath)
    call system('git -C ' . $HOME . '/.vim pull')
    :PlugUpdate
endif

" support utf-8 characters
set encoding=utf8

source ~/.vim/config/bindings.vim
source ~/.vim/config/nerdtree.vim
source ~/.vim/config/syntastic.vim
source ~/.vim/config/airline.vim
source ~/.vim/config/haste.vim
source ~/.vim/config/layout.vim
source ~/.vim/config/default.vim
