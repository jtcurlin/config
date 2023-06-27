-- file:    nvim/lua/plugins/telescope.lua
-- author:  jacob curlin
-- date:    06/26/2023

-- telescope

return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "telescope : find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "telescope : live grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "telescope : buffers" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "telescope : help tags" },
    },
}


