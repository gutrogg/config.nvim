local cmp = require("blink.cmp")

cmp.build():pwait()

cmp.setup({
  keymap = {
    preset = "none",

    ["<Tab>"] = {
      "select_next",
      "fallback",
    },
    ["<S-Tab>"] = {
      "select_prev",
      "fallback",
    },
    ["<CR>"] = {
      "accept",
      "fallback",
    },
    ["<C-space>"] = {
      "show",
      "show_documentation",
      "hide_documentation",
    },
    ["<C-e>"] = {
      "hide",
    },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  completion = {
    documentation = {
      auto_show = true,
    },
    accept = {
      auto_brackets = {
        enabled = true,
      },
    },
  },

  sources = {
    default = {
      "lsp",
      "path",
      "buffer",
    },
  },
})
