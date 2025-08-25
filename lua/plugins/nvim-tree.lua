return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            view = {
                width = 30,
            },
            actions = {
                open_file = {
                    quit_on_open = true, -- closes tree when you open a file
                },
            },
        })
    end,
}
