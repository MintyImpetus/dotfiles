lua require('plugins')

"Colorscheme
set background=dark " or light if you want light mode
colorscheme kanagawabones
set termguicolors

"Bindings
let mapleader = ","
:nnoremap <leader>f :Files<enter>
:nnoremap <leader>l :! sh %<enter>
:nnoremap <leader>m :wq<enter>
:nnoremap <leader>p :! pandoc % -t docx -o "$(echo % \| rev \| cut -d "." -f2- \| rev)".docx<enter>
:filetype on
":nnoremap <leader>f :History<enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd VimEnter * COQnow -s

set nocompatible
filetype plugin on
