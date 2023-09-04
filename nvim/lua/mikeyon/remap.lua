local map = vim.api.nvim_set_keymap
local silent = { silent = true, noremap = true }
map("", "<Space>", "<Nop>", silent)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>N", vim.cmd.Ex)

-- I like these for easy buffer and tab movement
vim.keymap.set("n", "]b", vim.cmd.bn)
vim.keymap.set("n", "[b", vim.cmd.bp)
vim.keymap.set("n", "]t", vim.cmd.tabn)
vim.keymap.set("n", "[t", vim.cmd.tabp)

-- This is probably a crime but idc I need layers
-- I am genuinely sad that they do not have 'sh' as a command
-- ":sh" made the disconnect a lot cleaner...
-- This feels like breaking something
vim.keymap.set("n", "<C-c>", ":term<CR>")

-- TODO toggle spelling
