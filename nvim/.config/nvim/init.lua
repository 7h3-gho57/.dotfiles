-- meta-accessor
vim.g.mapleader = " "
vim.o.scrolloff = 8
vim.o.cursorline = true
vim.o.rnu = true
vim.o.number = true
vim.o.syntax = "enable"
vim.o.smartindent = true
vim.o.colorcolumn = '80'
vim.o.hlsearch = true
vim.o.scrolloff = 12
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.mouse = 'a'
vim.o.termguicolors = true
-- vim.g.ayucolor = 'dark'
-- vim.g.colorscheme = 'ayu'


-- vim.opt.listchars = {eol='¬',tab='>·',trail='~',extends='>',precedes='<'}
vim.opt.listchars = {eol = '↲', tab = '>▸', trail = '·'}
vim.o.list = true
-- vim.o.completeopt = {menu,menuone,noselect}
require 'plugin/packer'
-- require 'plugin/cmp'
require 'plugin/telescope'
require 'plugin/comment'
require 'plugin/treesitter'
require 'plugin/lualine'
-- require 'plugin/null'
require 'plugin/lsp'



-- set termguicolors
-- let ayucolor="dark"
-- colorscheme ayu
