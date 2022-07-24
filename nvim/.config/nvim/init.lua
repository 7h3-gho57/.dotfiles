-- meta-accessor

vim.o.ma = true
vim.g.mapleader = " "
vim.o.scrolloff = 8
vim.o.cursorline = true
vim.o.rnu = true
vim.o.number = true
vim.o.syntax = "enable"
vim.o.smartindent = true
vim.o.colorcolumn = '80'
vim.o.scrolloff = 12

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.wrap = false

vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.guicursor = ""
vim.o.mouse = "a"
vim.o.termguicolors = true
vim.o.foldlevelstart = 99
vim.o.scrolloff = 7
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.clipboard = "unnamedplus"

-- vim.g.ayucolor = 'dark'
-- vim.g.colorscheme = 'ayu'

-- vim.opt.listchars = {eol='¬',tab='>·',trail='~',extends='>',precedes='<'}
vim.opt.listchars = {eol = '↲', tab = '>▸', trail = '·'}
vim.o.list = true
-- vim.o.completeopt = {menu,menuone,noselect}
require '7h3-gho57/packer'
-- require '7h3-gho57/cmp'
require '7h3-gho57/telescope'
require '7h3-gho57/comment'
require '7h3-gho57/treesitter'
require '7h3-gho57/lualine'
-- require '7h3-gho57/null'
require '7h3-gho57/lsp'
require '7h3-gho57/remap'
-- require '7h3-gho57/lspinstaller.lua'
-- require '7h3-gho57/lspinstaller.lua'
-- set termguicolors
-- let ayucolor="dark"
-- colorscheme ayu
--
local M = {}

local servers = {
  gopls = {},
  html = {},
  jsonls = {},
  pyright = {},
  rust_analyzer = {},
  sumneko_lua = {},
  tsserver = {},
  vimls = {},
}

local function on_attach(client, bufnr)
  -- Enable completion triggered by <C-X><C-O>
  -- See `:help omnifunc` and `:help ins-completion` for more information.
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  -- Use LSP as the handler for formatexpr.
  -- See `:help formatexpr` for more information.
  vim.api.nvim_buf_set_option(0, "formatexpr", "v:lua.vim.lsp.formatexpr()")

  -- Configure key mappings
  require("config.lsp.keymaps").setup(client, bufnr)
end

local opts = {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
}

function M.setup()
  require("config.lsp.installer").setup(servers, opts)
end

return M

