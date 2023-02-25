-- Plugin specification for neovim. 
-- Plugins managed by the Packer plugin managar
-- Load by calling `require(plugins)` in the main init.lua config file

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'navarasu/onedark.nvim'
end)