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

map.set('n', '<leader>a', '<cmd>CodeCompanionActions<CR>', { desc = 'Open CodeCompanion actions' })
map.set('v', '<leader>a', '<cmd>CodeCompanionActions<CR>', { desc = 'Open CodeCompanion actions' })

map.set('n', '<leader>at', '<cmd>CodeCompanionChat Toggle<CR>', { desc = 'Open CodeCompanion chat' })
map.set('v', '<leader>at', '<cmd>CodeCompanionChat Toggle<CR>', { desc = 'Open CodeCompanion chat' })

map.set('n', '<leader>ai', '<cmd>CodeCompanion<CR>', { desc = 'Open CodeCompanion inline' })
map.set('v', '<leader>ai', '<cmd>CodeCompanion<CR>', { desc = 'Open CodeCompanion inline' })

map.set('n', '<leader>g', '<cmd>G<CR>', { desc = 'Open [G]it', noremap = true })

return {}
