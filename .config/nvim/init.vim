lua require('plugins')

"Colorscheme
set background=dark " or light if you want light mode
colorscheme gruvbox
set termguicolors

"Bindings
let mapleader = ","
:nnoremap <leader>f :Files<enter>
:nnoremap <leader>l :! sh %<enter>
:nnoremap <leader>m :wq<enter>
:nnoremap <leader>p :! [ -f comp ] && ./comp \|\| pandoc "%" -t docx --citeproc --bibliography="$HOME/Documents/ref.bib" -o "$(echo % \| rev \| cut -d "." -f2- \| rev)".docx ; [ -f "$(echo % \| rev \| cut -d "." -f2- \| rev)".docx ] && libreoffice "$(echo % \| rev \| cut -d "." -f2- \| rev)".docx<enter>
:filetype on
":nnoremap <leader>f :History<enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd VimEnter * COQnow -s

"Vimwiki settings
set nocompatible
filetype plugin on
let g:vimwiki_list = [{'path': '~/Documents/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
