vim.g.mapleader = " "

-- Project navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Close current buffer
vim.keymap.set("n", "<leader>c", vim.cmd.bdelete)

-- Select all
vim.keymap.set("n", "<leader>aa", "ggVG")

-- Move selected block up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")