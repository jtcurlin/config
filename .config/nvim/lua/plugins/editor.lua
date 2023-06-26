-- file:    nvim/lua/plugins/editor.lua
-- author:  jacob curlin
-- date:    06/05/2023

return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  }
}
