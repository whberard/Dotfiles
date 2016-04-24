set ruler laststatus=2 number title hlsearch
syntax on

" This makes vim invoke Latex-Suite when you open a TeX file.
filetype plugin on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


""""""
" Sage settings (from Franco Saliola)
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %

set foldmethod=indent

