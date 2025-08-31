-- options.lua: core Neovim settings

local o, fn = vim.opt, vim.fn

-- Line Numbers
o.number = true                 -- show absolute line number on cursor line
o.relativenumber = true         -- show relative line numbers elsewhere

-- Tabs & Indentation
o.expandtab = true              -- use spaces instead of tabs
o.tabstop = 2                   -- number of spaces a tab counts for
o.shiftwidth = 2                -- size of auto-indent
o.softtabstop = 2               -- number of spaces tab key inserts
o.smartindent = true            -- auto-indent new lines
o.autoindent = true

-- Editing
o.backspace = { "start", "eol", "indent" } -- make backspace behave like in modern editors

-- UI
o.termguicolors = true          -- enable 24-bit RGB colors
o.cursorline = true             -- highlight the current line
o.signcolumn = "yes"            -- always show sign column
o.scrolloff = 8                 -- keep 8 lines visible above/below cursor
o.wrap = false                  -- don't wrap long lines
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
o.inccommand = "split"          -- live preview of :substitute in a split

-- Splits
o.splitbelow = true             -- horizontal splits open below
o.splitright = true             -- vertical splits open to the right

-- Performance
o.updatetime = 50              -- time before triggering events (LSP, etc.)
o.timeoutlen = 100              -- time to wait for mapped sequence

-- Clipboard & Mouse
o.clipboard = "unnamedplus"     -- use system clipboard
o.mouse = "a"                   -- enable mouse support in all modes

-- Files & Encoding
o.fileencoding = "utf-8"        -- default file encoding
o.swapfile = false              -- no swap files
o.backup = false                -- no backup files
o.undofile = true               -- persistent undo history
o.hidden = true                -- allow buffer switching without saving

-- Completion UI
-- o.completeopt = { "menu", "menuone", "noselect" }  -- better completion menu
-- o.shortmess:append("c")                            -- suppress some completion messages


