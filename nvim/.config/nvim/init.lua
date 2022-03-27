-- meta-accessor
vim.g.mapleader = " "
vim.o.scrolloff = 8
vim.o.cursorline = true
vim.o.rnu = true
vim.o.number = true
vim.o.syntax = "enable"
--vim.o.smartindent = true
vim.o.colorcolumn = '80'
-- vim.api.nvim_set_keymap('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })

-- vim.opt.listchars = {eol='¬',tab='>·',trail='~',extends='>',precedes='<'}
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}
vim.o.list = true
--vim.o.completeopt = {menu,menuone,noselect}

require 'plugin/packer'
require 'plugin/cmp'
require 'plugin/telescope'
require 'plugin/comment'
require 'plugin/treesitter'
require 'plugin/lualine'
