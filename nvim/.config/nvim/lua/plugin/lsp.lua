local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.pylsp.setup{
  capabilities = capabilities,
  on_attach = function()
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
  vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, {buffer=0})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})
  vim.keymap.set("n", "<leader>df", vim.diagnostic.goto_next, {buffer=0})
  vim.keymap.set("n", "<leader>fd", "<cmd>lua vim.lsp.buf.formatting()<CR>")
  -- vim.api.nvim_buf_set_keymap('n', '<leader>fd', '<cmd>lua vim.lsp.buf.formatting()<CR>')
  end,
}

vim.opt.completeopt={"menu", "menuone", "noselect"}

local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- { name = 'vsnip' }, -- For vsnip users.
    { name = 'luasnip' }, -- For luasnip users.
    -- { name = 'ultisnips' }, -- For ultisnips users.
    -- { name = 'snippy' }, -- For snippy users.
  }, {
    { name = 'buffer' },
  })
})
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require('lspconfig')['pylsp'].setup {
--   capabilities = capabilities,
--   on_attach = function()
--   vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
--   end,
-- }
