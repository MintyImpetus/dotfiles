	return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
	use 'junegunn/goyo.vim'
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
	use { 'ms-jpq/coq.thirdparty', branch = '3p'}
--	use 'morhetz/gruvbox'
--	use {'prettier/vim-prettier', run = 'yarn install' }
end)
