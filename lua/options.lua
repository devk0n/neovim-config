-- options.lua: core Neovim settings

local o, fn = vim.opt, vim.fn

-- Line Numbers
o.number = true                 -- show absolute line number on cursor line
o.relativenumber = true         -- show relative line numbers elsewhere

-- Tabs & Indentation
o.expandtab = true              -- use spaces instead of tabs
o.tabstop = 4                   -- number of spaces a tab counts for
o.shiftwidth = 4                -- size of auto-indent
o.softtabstop = 4               -- number of spaces tab key inserts
o.smartindent = true            -- auto-indent new lines

-- UI
o.termguicolors = true          -- enable 24-bit RGB colors
o.cursorline = true             -- highlight the current line
o.signcolumn = "auto"           -- always show sign column
o.scrolloff = 8                 -- keep 8 lines visible above/below cursor
o.wrap = true                   -- don't wrap long lines
o.laststatus = 3                -- global statusline
o.cmdheight = 1                 -- height of the command line
o.showmode = false              -- don't show mode (use statusline instead)
o.fillchars = {
  eob = " ",                    -- hide ~ at end of buffer
  fold = " ",                   -- clean folds
  diff = "╱",                   -- nice diff filler
  vert = "┃",                   -- vertical split separator
}

-- Search
o.ignorecase = true             -- case-insensitive search by default
o.smartcase = true              -- becomes case-sensitive if uppercase used
o.hlsearch = true               -- highlight search results
o.incsearch = true              -- show matches while typing

-- Splits
o.splitbelow = true             -- horizontal splits open below
o.splitright = true             -- vertical splits open to the right

-- Performance
o.updatetime = 200              -- time before triggering events (LSP, etc.)
o.timeoutlen = 200              -- time to wait for mapped sequence

-- Clipboard & Mouse
o.clipboard = "unnamedplus"     -- use system clipboard
o.mouse = "a"                   -- enable mouse support in all modes

-- Files & Encoding
o.fileencoding = "utf-8"        -- default file encoding
o.swapfile = false              -- no swap files
o.backup = false                -- no backup files
o.undofile = true               -- persistent undo history
o.hidden = false                -- allow buffer switching without saving

-- Completion UI
-- o.completeopt = { "menu", "menuone", "noselect" }  -- better completion menu
-- o.shortmess:append("c")                            -- suppress some completion messages


