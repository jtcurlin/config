-- file:    nvim/lua/config/plugins.lua
-- author:  jacob curlin
-- date:    06/25/2023

-- bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

-- list of plugins to be loaded 
-- local plugins = {
     
-- }

-- load plugins w/ lazy
require('lazy').setup("plugins")

