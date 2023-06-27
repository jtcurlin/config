-- file:    nvim/lua/plugins/lualine.lua
-- author:  jacob curlin
-- date:    06/26/2023


return {
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
