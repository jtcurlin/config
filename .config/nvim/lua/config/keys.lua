-- file:    /nvim/lua/config/keys.lua
-- author:  jacob curlin
-- date:    06/25/2023

-- default options
local opts = { noremap = true, silent = true }

-- alias keymap function
local keymap = vim.api.nvim_set_keymap

-- set space = <leader>
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set 'kj' = esc (exit insert mode)
vim.keymap.set("i", "kj", "<Esc>", {noremap = true})

-- set '<leader>q' to close all windows and exit neovim
vim.keymap.set("n", "<leader>q", ":qa!<CR>", {})


