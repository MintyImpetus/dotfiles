	return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use {"ntk148v/komau.vim"}
	use 'pgdouyon/vim-yin-yang'
	use 'plan9-for-vimspace/acme-colors'
	use 'huyvohcmc/atlas.vim'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'junegunn/goyo.vim'
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
	use { 'ms-jpq/coq.thirdparty', branch = '3p'}
end)
