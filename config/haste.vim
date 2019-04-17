" do not redraw while running macros (much faster)
"set lazyredraw

" faster tty redrawing
set ttyfast

" Improve move speed
let g:boostmove=0
set updatetime=500
au CursorMoved * call BoostMoveON()
au CursorMovedI * call BoostMoveON()
au CursorHold * call BoostMoveOFF()
au CursorHoldI * call BoostMoveOFF()
function BoostMoveON()
  if (winline() != line('$')) && (line('.') != 1)
    if (winline() == winheight('.')) || (winline() == 1)
      let g:boostmove=1
      setlocal nocursorline
      setlocal syntax=OFF
    endif
  endif
endfunction
function BoostMoveOFF()
  if g:boostmove==1
    let g:boostmove=0
    setlocal cursorline
    setlocal syntax=ON
  endif
endfunction
