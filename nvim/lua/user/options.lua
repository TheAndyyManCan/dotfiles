vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.smartindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wildmode = 'longest:full,full'
vim.opt.completeopt = 'menuone,longest,preview'

vim.opt.title = true
vim.opt.mouse = 'a'

vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin"
vim.opt.signcolumn = 'yes:2'

vim.opt.spell = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

--vim.opt.list = true
vim.opt.fillchars:append({ eob = ' ' })

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 15

vim.opt.clipboard = 'unnamedplus'

vim.opt.confirm = true

vim.opt.undofile = true
vim.opt.backup = true
vim.opt.backupdir:remove('.')
