local o = vim.o
local g = vim.g

o.autocomplete = false
o.clipboard = 'unnamedplus'
o.colorcolumn = '80'
o.conceallevel = 2
o.confirm = true
o.cursorline = true
o.expandtab = true
o.fo = 'croqwanblj'
o.list = true
o.number = true
o.relativenumber = true
o.numberwidth = 4
o.scrolloff = 4
o.sidescrolloff = 8
o.signcolumn = 'yes'
o.ignorecase = true
o.softtabstop = 2
o.tabstop = 2
o.shiftround = true
o.shiftwidth = 0 -- use tabstop
o.smartindent = true
o.autoindent = true
o.undofile = true
o.undolevels = 1000
o.wrap = false
o.pummaxwidth = 40
o.pumheight = 20
o.completeopt = 'fuzzy,menu,menuone,noinsert,popup'

g.mapleader = ' '
g.maplocalleader = '\\'

-- set built-in catppuccin colorscheme as fallback
vim.cmd.colorscheme('catppuccin')
-- experimental new UI
require('vim._core.ui2').enable()
