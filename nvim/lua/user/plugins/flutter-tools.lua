local flutter_tools = require("flutter-tools")

flutter_tools.setup {
  lsp = {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    on_attach = function(_, bufnr)
      local bufmap = function(mode, lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
      end
      bufmap("n", "<leader>fr", ":FlutterRun<CR>")
      bufmap("n", "<leader>fq", ":FlutterQuit<CR>")
      bufmap("n", "<leader>fh", ":FlutterHotReload<CR>")
      bufmap("n", "<leader>fR", ":FlutterHotRestart<CR>")
      bufmap("n", "<leader>fd", ":FlutterDetach<CR>")
      bufmap("n", "<leader>fv", ":FlutterVisualDebug<CR>")
    end,
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "Comment",
    prefix = "// ",
    enabled = true,
  },
}

