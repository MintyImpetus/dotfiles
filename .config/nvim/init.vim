lua require('plugins')

"Colorscheme
set background=dark " or light if you want light mode
colorscheme gruvbox

"Bindings
let mapleader = ","
:nnoremap <leader>f :History<enter>
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>

