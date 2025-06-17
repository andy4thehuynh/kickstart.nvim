-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set in nvim/lua.init
-- Add any additional autocmds here

-- Treat Brewfile as a ruby file
local brewfile = vim.api.nvim_create_augroup('Brewfile', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  pattern = { 'BrewFile' },
  callback = function()
    vim.cmd [[ set ft=ruby ]]
  end,
  group = brewfile,
})

return {}
