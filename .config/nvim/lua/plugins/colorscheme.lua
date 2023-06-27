-- file:    nvim/lua/plugins/colorscheme.lua
-- author:  jacob curlin
-- date:    06/25/2023


return {
    'ellisonleao/gruvbox.nvim',
    lazy = false,
    priority = 1000,    -- top priority
    config = function()
        vim.cmd([[colorscheme gruvbox]])    -- load/set colorscheme
    end,
}
