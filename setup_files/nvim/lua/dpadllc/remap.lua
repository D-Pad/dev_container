-- Global variables for setting options
local opts = { noremap = true, silent = true }


vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<leader>cd', ':cd %:p:h<CR>:pwd<CR>:!tmuxcwd<CR><CR>')
vim.keymap.set('n', '<leader>CD', ':cd %:p:h<CR>:pwd<CR>:!tmuxcwd top<CR><CR>')

vim.keymap.set('n', '<leader>h', ':noh<CR>')

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Map for wrapping a long line of text to multiple lines
vim.keymap.set("n", "<leader>w", "80|bi<CR><Esc>", opts)


