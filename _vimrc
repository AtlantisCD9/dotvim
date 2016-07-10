set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" self definition***********************************************************************************************
" http://blog.csdn.net/namecyf/article/details/7787523

" self definition
set nu!
colorscheme desert
syntax enable
syntax on

" taglist.....ctags -R
set tags=tags
set autochdir

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" a.vim
nnoremap <silent> <F12> :A<CR>

" grep.vim
nnoremap <silent> <F3> :Grep<CR>

let Fgrep_Path = "C:/Vim/vimfiles/plugin/grep/bin/fgrep.exe"
let Egrep_Path = "C:/Vim/vimfiles/plugin/grep/bin/egrep.exe"
let Grep_Path = "C:/Vim/vimfiles/plugin/grep/bin/grep.exe"
let Grep_Find_Path = "C:/Vim/vimfiles/plugin/findutils/bin/find.exe"
let Grep_Xargs_Path = "C:/Vim/vimfiles/plugin/findutils/bin/xargs.exe"


" minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" let g:neocomplcache_enable_at_startup = 1

" self definition***********************************************************************************************

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

