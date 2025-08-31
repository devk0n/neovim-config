-- Nvim-Tree Toggle
vim.keymap.set("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "CLear search highlight", silent = true })

vim.keymap.set("n", "Q", "<nop>")

