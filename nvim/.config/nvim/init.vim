" Display line numbers
set number
" Tab width = 4 spaces
set tabstop=4
" Autoindent width = 4 spaces
set shiftwidth=4
" Expand tabs into spaces
set expandtab
" Enable syntax / lexical highlighting
syntax enable
" Enable plugins
filetype plugin on
" Recursive search into subdirectories appended to path
set path+=**
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
" Do not expand tabs in Makefiles
autocmd FileType make setlocal noexpandtab
