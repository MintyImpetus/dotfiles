local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use {"ntk148v/komau.vim"}
	use 'pgdouyon/vim-yin-yang'
--	use 'plan9-for-vimspace/acme-colors'
	use 'huyvohcmc/atlas.vim'
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'
--	use 'junegunn/goyo.vim'
	use { 'ms-jpq/coq_nvim', branch = 'coq' }
	use { 'ms-jpq/coq.artifacts', branch = 'artifacts' }
	use { 'ms-jpq/coq.thirdparty', branch = '3p'}
	use 'mcchrish/zenbones.nvim'
	use 'vimwiki/vimwiki'
	use 'rktjmp/lush.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
