vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Colemak: hjkl>mnei, i>t
map("n", "m", "h")          -- move Left
map("n", "n", "gj")         -- move Down (g to allow move within wrapped lines)
map("n", "e", "gk")         -- move Up (g to allow move within wrapped lines)
map("n", "i", "l")          -- move Right
map("n", "<C-m>", "<C-h>")   -- move to pane on left
map("n", "<C-i>", "<C-j>")   -- move to pane on right
map("n", "t", "i")          -- (t)ype           replaces (i)nsert
map("n", "T", "I")          -- (T)ype at bol    replaces (I)nsert
map("n", "E", "e")          -- end of word      replaces (e)nd
map("n", "h", "n")          -- next match       replaces (n)ext
map("n", "H", "N")          -- previous match   replaces (N) prev


-- Visual Colemak
map("v", "m", "h")          -- move Left
map("v", "n", "gj")         -- move Down (g to allow move within wrapped lines)
map("v", "e", "gk")         -- move Up (g to allow move within wrapped lines)
map("v", "I", "l")          -- move Right - shifted to fix [v]isual[i]n[...]

-- Enter commands without pressing shift
map("n", ";", ":")
map("n", ":", ";")

-- Quickly return to normal_mode
map("i", ",n", "<Esc>")

-- Ctrl+up/down to page up/down
map("n", "<C-n>", "<C-f>M")  -- page down
map("n", "<C-e>", "<C-b>M")  -- page up-- Quickly return to normal_mode
map("i", ",n", "<Esc>")

-- Ctrl+up/down to page up/down
map("n", "<C-n>", "<C-f>M")  -- page down
map("n", "<C-e>", "<C-b>M")  -- page up

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
