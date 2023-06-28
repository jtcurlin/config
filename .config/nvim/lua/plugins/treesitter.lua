-- file:    nvim/lua/plugins/treesitter.lua
-- author:  jacob curlin
-- date:    06/26/2023


return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { "c", "lua", "python", "rust" },
            highlight = { enable = true, }
        }
    end
}
