" enable 256 colors
set t_Co=256

" required in ubuntu
colorscheme default

" turn color highlighting on
syntax on

" enable line highlighting
set cursorline
highlight CursorLine term=bold cterm=bold ctermbg=233 guibg=Grey40
" set cursorcolumn
"highlight CursorColumn term=bold cterm=bold ctermbg=233 guibg=Grey40

" show line numbers
"set number

" show relative line numbers
set number relativenumber

" auto toggle relative line numbers
augroup numbertoggle
  autocmd!
  "autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  "autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
  autocmd FocusGained,InsertLeave * set relativenumber
  autocmd FocusLost,InsertEnter   * set norelativenumber
augroup END

" indent use backspace delete indent, eol use backspace delete line at
" begining start delete the char you just typed in if you do not use set
" nocompatible ,you need this
set nrformats-=octal

" show tab markers and eol spaces
set list
set listchars=tab:→\ ,trail:«,extends:↷,precedes:↶
set fillchars=vert:│,fold:·
hi VertSplit cterm=NONE ctermbg=233 guibg=Grey40

" show matching { or ( as ) or } is typed
set showmatch
