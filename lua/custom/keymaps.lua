-- lua/user/keybindings.lua
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- My keysmap

-- buffer
map('n', '<D-]>', ':bn<cr>', opts)
map('n', '<D-[>', ':bp<cr>', opts)
map('n', '<c-c>', ':bd<cr>', opts)

-- cmd + s => :w
map('n', '<D-s>', ':w<CR>', opts)
map('i', '<D-s>', '<Esc>:w<CR>a', opts)
map('v', '<D-s>', '<Esc>:w<CR>gv', opts)
