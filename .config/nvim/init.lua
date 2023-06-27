-- file:    nvim/init.lua
-- author:  jacob curlin
-- date:    06/25/2023


-- set space = <leader>
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require ('config.plugins')
require ('config.keys')
require ('config.options')





