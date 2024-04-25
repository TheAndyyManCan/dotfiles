require('nvim-tree').setup({
  git = {
    ignore = false,
  },
  view = {
    width = 45
  },
  renderer = {
    group_empty = true,
    icons = {
      show = {
        folder_arrow = true,
      },
    },
    indent_markers = {
      enable = true,
    },
  },
})

vim.keymap.set('n', '<Leader>n', ':NvimTreeFindFileToggle<CR>')
