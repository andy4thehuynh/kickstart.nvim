-- [[ Custom Keymaps ]]
-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set in nvim/init.lua
-- Add any additional keymaps here
--  See `:help vim.keymap.set()`

local map = vim.keymap

map.set('n', ';', ':', { noremap = true })
map.set('n', '\\<BS>', ':tabclose<CR>', { noremap = true, silent = true })
map.set('n', '\\=', ':tabnew<CR>', { noremap = true, silent = true })
map.set('n', '\\-', ':split<CR>', { noremap = true, silent = true })
map.set('n', '\\\\', ':vsplit<CR>', { noremap = true, silent = true })

map.set('n', '<leader>g', '<cmd>G<CR>', { desc = 'Open [G]it', noremap = true })

return {}
