-- file:    nvim/lua/plugins/tmux.lua
-- author:  jacob curlin
-- date:    06/25/2023

-- tmux.nvim

return {
    {
        'aserowy/tmux.nvim',
        config = function()
            require('tmux').setup()
        end
    }
}
