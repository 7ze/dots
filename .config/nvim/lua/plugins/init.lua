local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
print(install_path)

-- installs packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute [[ packadd packer.nvim ]]
end

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}

  --nvim tree
  use {
	'kyazdani42/nvim-tree.lua',
	requires = {'kyazdani42/nvim-web-devicons'}
  }
end)
