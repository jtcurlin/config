-- file:    /nvim/lua/config/keys.lua
-- author:  jacob curlin
-- date:    06/25/2023

-- note : most keymaps currently managed by lazy ('keys')

-- whichkey config
local wk = require("which-key")
local mappings = {
	["<leader>"] = {
		f = {
		    name = "telescope",
		    f = { "telescope : find files" },
		    g = { "telescope : live grep" },
		    b = { "telescope : buffers" },
		    h = { "telescope : help tags" },
		},
	},
}
local opts = {}
wk.register(mappings, opts)




