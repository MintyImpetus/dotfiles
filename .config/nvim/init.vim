lua require('plugins')

"Colorscheme
set background=light " or light if you want light mode
colorscheme creme

"Bindings
let mapleader = ";"
:nnoremap <leader>f :Files<enter>
:nnoremap <leader>l :! sh %<enter>
:nnoremap jk :wq<enter>
":nnoremap <leader>f :History<enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
autocmd VimEnter * COQnow -s

