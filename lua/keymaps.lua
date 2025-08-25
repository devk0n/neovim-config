-- Nvim-Tree Toggle
vim.keymap.set("n", "<C-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })

vim.keymap.set("n", "<F4>", function() require("dap").repl.open() end, { desc = "Open DAP REPL" })
vim.keymap.set("n", "<F5>", function() require("dap").continue() end)
vim.keymap.set("n", "<F10>", function() require("dap").step_over() end)
vim.keymap.set("n", "<F11>", function() require("dap").step_into() end)
vim.keymap.set("n", "<F12>", function() require("dap").step_out() end)
vim.keymap.set("n", "<F9>", function() require("dap").toggle_breakpoint() end)
