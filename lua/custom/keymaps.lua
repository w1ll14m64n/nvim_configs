-- lua/user/keybindings.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- My keysmap
map('n', '<c-]>', '<cmd>bn<cr>', { silent = true, desc = 'Next buffer' })
map('n', '<c-[>', '<cmd>bp<cr>', { silent = true, desc = 'Previous buffer' })
