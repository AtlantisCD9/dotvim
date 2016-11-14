" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)


" self definition***********************************************************************************************
" http://blog.csdn.net/namecyf/article/details/7787523

" self definition
set foldmethod=indent
set shiftwidth=4
"set foldmethod=syntax
"zM close all
"zR open all

set hlsearch

set nu!
colorscheme desert
syntax enable
syntax on

set list
set listchars=tab:>-,trail:-
set ts=4
" set expandtab    "just for tab -> 4 spaces

" set autoindent
set cindent "C style indent

" taglist.....ctags -R
" In the current directory can not find the tags file to the upper directory to find
set tags=tags;/
" set autochdir

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>

" a.vim
nnoremap <silent> <F4> :A<CR>

" grep.vim
nnoremap <silent> <F3> :Grep<CR>

" minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" let g:neocomplcache_enable_at_startup = 1

" self definition***********************************************************************************************


" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

