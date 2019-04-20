" when typing {, add closing }
"inoremap { {<CR>}<Esc>ko

" always show status line on every window
set laststatus=2

let did_load_csvfiletype=1
filetype plugin on

" support utf-8 characters
set encoding=utf-8

" reduce delay when leaving insert mode
set ttimeoutlen=50

" vim extended mode
set nocompatible

" disable parentheses matching
let loaded_matchparen = 1

" numbers of spaces of tab character
set tabstop=4

" numbers of spaces to (auto)indent
set shiftwidth=4

" insert spaces instead of tabs at start of line
set expandtab

" treats spaces as tabs, in this case backspace deletes two spaces
set smarttab

" auto indent inside if statements
set autoindent

" auto indent when adding new line inside branch
set smartindent

" backup preferences
set backup
set directory=~/.vim/backup
set backupdir=~/.vim/backup
set backupext=~

" allows pattern matching with special characters
set magic

" beep on errors, such as :set xyz
set errorbells

" don't blink the screen for errors
set novisualbell

" highlight search terms
set hlsearch

" increment search
set incsearch

" turn case-insensitive search off
set noignorecase

" tab completion on :command mode
set wildmenu
set wildmode=list:longest,full
set wildignore=*.pdf,*.class,*.o,*.tar,*.gz,*.swp,*.dvi,*.zip,*.bak,*.aux,*.log,*.ps

" lines to pad above and below cursor
set scrolloff=4

" enable mouse pass-through
set mouse=nv

" tell us when any line is changed via : commands
set report=0

" show line breaks starting with +
set showbreak=+

" display incomplete commands
set showcmd

" show filename in window
set title

" allow functions starting with ESC to work in insert mode, including arrow keys
set esckeys

" save files when editing many and skipping next/previous
set autowrite

" don't add two spaces after . and ?'s
set nojoinspaces

" start where we left off last in vim
set viminfo='10,\"200,:20,%,n~/.vim/viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" put new windows below current one
set splitbelow

" number of undos
set history=500

" allow cursor wrapping in insert mode
set whichwrap=b,s,<,>,[,]

" prevent enter on some file messages
set shortmess=at

" stop run on mappings
set maxmapdepth=50

" make backspace work like most other apps
set backspace=indent,eol,start

" show matching brackets for 0.5 seconds
set mat=5

" don't warn for shell command when buffer changed
set nowarn

" how automatic formatting is to be done
set formatoptions=tcrq2ln1
