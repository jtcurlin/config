-- file:    nvim/lua/plugins/ui.lua
-- author:  jacob curlin
-- date:    06/25/2023


return {
    -- colorscheme (gruvbox)
    {
        'ellisonleao/gruvbox.nvim',
        lazy = false,
        priority = 1000,    -- top priority
        config = function()
            vim.cmd([[colorscheme gruvbox]])    -- load/set colorscheme
        end,
    },
    -- lualine (statusline)  - temporary, TODO: heirline rabbit hole
    {
        'nvim-lualine/lualine.nvim',
        event = 'VeryLazy',       -- load on 'VeryLazy', for UI/non-critical components
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'gruvbox'
                }
            }
        end  
    }
}
