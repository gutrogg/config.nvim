require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "bashls",
    "jsonls",
    "yamlls",
  },
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostic = {
        globals = { "vim" },
      },
    },
  },
})

vim.lsp.enable({
  "lua_ls",
  "bashls",
  "jsonls",
  "yamlls",
})
