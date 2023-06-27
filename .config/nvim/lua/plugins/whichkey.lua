-- file:    nvim/lua/plugins/whichkey.lua
-- author:  jacob curlin
-- date:    06/26/2023


return {
    -- which-key
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
    },
}


