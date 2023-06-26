-- file:    nvim/lua/plugins/navi.lua
-- author:  jacob curlin
-- date:    06/25/2023

-- (todo)

-- telescope
-- nvim-tree
-- tmux navigation (navigator.nvim?)


return {
    -- telescope fzf
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    -- tmux <-> neovim navigation, copy, resize
    {
        'aserowy/tmux.nvim',
        config = function()
            require('tmux').setup()
        end
    }
}
