require("lualine").setup({
  options = {
    theme = "auto",
    globalstatus = true,
    selection_separators = "",
    component_separators = "",
  },

  sections = {

    lualine_a = {
      "mode",
    },

    lualine_b = {
      "branch",
      {
        "diff",
        symbols = {
          added = "+ ",
          modified = "~ ",
          removed = "- ",
        },
      },
    },

    lualine_c = {
      {
        "filename",
        path = 1,
      },
    },


    lualine_x = {
      {
        "diagnostics",
        sources = {
          "nvim_diagnostic",
        },
        symbols = {
          error = " ",
          warn = " ",
          info = " ",
          hint = "󰌵 ",
        },
      },

      {
        "filetype",
      },

    },

    lualine_y = {
      "lsp_progress",
      "progress",
    },

    lualine_z = {
      {
        "datetime",
        style = "%H:%M",
      },
    },
  },
})
