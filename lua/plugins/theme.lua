return {
    -- Gruvbox
    {
        "ellisonleao/gruvbox.nvim",
    },

    -- Catppuccin
    { "catppuccin/nvim", name = "catppuccin" },

    -- Tokyonight
    { "folke/tokyonight.nvim" },
    
    -- Nightfox
    { "EdenEast/nightfox.nvim",
        priority = 1000,  -- load before other start plugins
        config = function()
            vim.cmd.colorscheme("nightfox")
        end,
    },
}

