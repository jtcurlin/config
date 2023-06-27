-- file:    nvim/lua/plugins/nvimtree.lua
-- author:  jacob curlin
-- date:    06/05/2023

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { '<leader>e', ':NvimTreeToggle<CR>', desc = "NvimTree : toggle" }
    },
    config = function()
      require("nvim-tree").setup {}
    end
}
