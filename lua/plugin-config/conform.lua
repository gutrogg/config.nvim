require("conform").setup({
  formatters_by_ft = {
    php = { "php_cs_fixer" },
    lua = { "stylua" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback"
  },
})
