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

-- cmd + x => exit input mode, go to visual mode
map('i', '<D-x>', '<Esc>v', opts)

-- Vertical scroll and center
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)

-- Find and center
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Window management
map('n', '<leader>v', '<C-w>v', opts) -- split window vertically
map('n', '<leader>h', '<C-w>s', opts) -- split window horizontally
map('n', '<leader>se', '<C-w>=', opts) -- make split windows equal width & height
map('n', '<leader>cs', ':close<CR>', opts) -- close current split window

-- Toggle line wrapping
map('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Keep last yanked when pasting
map('v', 'p', '"_dP', opts)