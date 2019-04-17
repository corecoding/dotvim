"let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:airline#extensions#gutentags#enabled = 1
"set statusline+=%{gutentags#statusline()}

" no need to show line and column numbers, airline does this
set noruler

" don't show insert / replace since power line does this
set noshowmode
