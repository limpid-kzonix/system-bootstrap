-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/
-- MAPPINGS
local map = require('core.utils').map

map('n', '<leader>cc', ':Telescope <CR>')
map('n', '<leader>q', ':q <CR>')
map("n", '<leader>sfm', "<cmd>lua vim.lsp.buf.formatting()<CR>")

vim.opt_global.shortmess:remove('F')

vim.cmd([[augroup lsp]])
vim.cmd([[au!]])
vim.cmd([[au FileType java,scala,sbt lua require("metals").initialize_or_attach({})]])
vim.cmd([[augroup end]])

vim.g.did_load_filetypes = 1

-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
