-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set in nvim/init.lua
-- Add any additional options here
--

local o = vim.opt

o.tabstop = 2 -- Sets width of a hard tab character
o.shiftwidth = 2 -- Sets number of spaces used for each auto-indent step
o.expandtab = true -- Converts tab characters into spaces when indenting
o.swapfile = false -- Set to false means you can't recover unsaved changes if Neovim crashes
o.backup = false -- Set to false means on file save, nvim won't keep a separate backup copy of original file
o.writebackup = false -- Set to false means on save, nvim doesn't create a temp backup of the original file

return {}
