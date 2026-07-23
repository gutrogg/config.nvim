local map = vim.keymap.set

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    local opts = { buffer = ev.buf }

    local map = function(mode, key, action, description)
      vim.keymap.set(mode, key, action, {
        buffer = opts.buffer,
        desc = description
      })
    end

    map("n", "gd", vim.lsp.buf.definition, "[g]o to [d]efinition")
    map("n", "gr", vim.lsp.buf.references, "[g]o to [r]eferences")
    map("n", "K", vim.lsp.buf.hover, "Show documentation")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("n", "<leader>ca", vim.lsp.buf.code_action, "[c]ode [a]ction")
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("LspFormat", {}),
  callback = function(args)
    local clients = vim.lsp.get_clients({
      bufnr = args.buf,
    })

    for _, client in ipairs(clients) do
      if client:supports_method("textDocument/formatting") then
        vim.lsp.buf.format({
          bufnr = args.buf,
          async = false,
        })
        break
      end
    end
  end,
})

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("n", "<Esc>", "<cmd>noh<CR>")
map("n", "<leader>w", "<cmd>w<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
map("n", "<leader>x", "<cmd>x<CR>")

map("n", "<leader>bd", "<cmd>bdelete<CR>")
map("n", "<Tab>", "<cmd>bnext<CR>")
map("n", "<S-Tab>", "<cmd>bprevious<CR>")

map("n", "<leader>sv", "<C-w>v")
map("n", "<leader>sh", "<C-w>s")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<C-Up>", "<cmd>resize -2<CR>")
map("n", "<C-Down>", "<cmd>resize +2<CR>")
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>")
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("v", "<", "<gv")
map("v", ">", ">gv")
map("x", "<leader>p", "\"_dP")
