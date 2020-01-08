set runtimepath^=$VimCODEDIR
set runtimepath+=$VimCODEDIR/after
let &packpath = &runtimepath
source $VimCODEDIR/vimrc

" let g:python3_host_prog = 'C:\Program Files\Python36\python.exe'

" We can check first if the following commands are available, 
" but the last one is just a var anyway
if exists('g:Gui')
    Guifont DejaVu Sans Mono:h15

    " Starts in fullscreen, Maximized should work too (untested)
    let g:GuiWindowFullScreen=1
endif

