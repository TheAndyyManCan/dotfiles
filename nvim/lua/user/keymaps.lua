vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true })

vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('v', 'y', 'myy`y')

vim.keymap.set('v', 'p', '"_dP')

vim.keymap.set('n', '<Leader>k', ':nohlseach<CR>')

vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')

-- Prettier
vim.keymap.set("n", "<leader>re", "<Plug>(Prettier)", opts)
vim.keymap.set("v", "<leader>re", ":PrettierFragment<cr>", opts)
