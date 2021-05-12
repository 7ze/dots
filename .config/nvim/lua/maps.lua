-- @maps.lua --

function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- leader key
vim.g.mapleader = ' '

-- easy escape
map('i', 'jk', '<esc>')
map('i', 'kj', '<esc>')
map('i', 'jj', '<esc>')

-- explorer
map('n', '<leader>e', ':NvimTreeToggle <cr>')

-- switch buffer
map('n', '<tab>', ':bnext <cr>')
map('n', '<s-tab>', ':bprevious <cr>')
