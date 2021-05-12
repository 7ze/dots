-- @opts.lua --

local o = vim.o
local b = vim.bo
local w = vim.wo
local cmd = vim.cmd

cmd [[ set iskeyword+= ]]               -- treats each hyphen seperated word as an individual word
cmd [[ set clipboard=unnamedplus ]]     -- vim yanks -> system clipboard


-- global opts

o.splitbelow = true     -- always splits below
o.splitright = true     -- always splits to the right
o.pumheight = 10        -- makes popup menu smaller
o.cmdheight = 2         -- more space for messages
o.fileencoding = 'utf-8'
o.t_Co = '256'          -- support 256 colors
o.mouse = 'a'           -- enables mouse


-- buffer-local opts

b.expandtab = true
b.shiftwidth = 2
b.smartindent = false
b.tabstop = 2


-- window-local opts

w.number = false
w.relativenumber = false
w.numberwidth = 2
