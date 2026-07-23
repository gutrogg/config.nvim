require("arborist").setup({
  update_cadence = "weekly",

  ensure_installed = {
    "lua",
    "json",
    "yaml",
    "bash",
    "markdown",
    "markdown_inline",
  },
})
