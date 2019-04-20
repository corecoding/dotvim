let mapleader = "\<Esc>"

map <Leader><Esc> :NERDTreeToggle<CR>
map <Leader>` :PlugUpdate<CR>
map <Leader>1 :set invpaste<CR>
map <Leader>2 :set invnumber<CR>
map <Leader>3 :call TrimWhiteSpace()<CR>

" bind Tab to switch window
map <Tab> <C-w><C-w>

" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
  %s/$//e
  %s/	/  /e
endfunction

" Toggle relative line numbers
function! RelativeLineNumbers()
  set relativenumber
  set rnu
endfunction

function! InverseLineNumbers()
  set invrelativenumber
  set invnumber
endfunction
