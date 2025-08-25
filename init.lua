-- ~/.config/nvim/init.lua

-- 1) Core options first
require("options")
require("keymaps")

-- 2) Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 3) Start lazy and import your plugin specs (lua/plugins/*.lua)
require("lazy").setup({
  spec = {
    { import = "plugins" }, -- auto-load every file in lua/plugins/
  },
  defaults = { lazy = false, version = false },
  checker = { enabled = true },
})

-- 4) (optional) other modules after lazy
-- require("keymaps")
