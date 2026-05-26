local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs & Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true

-- Behavior
opt.clipboard = "unnamedplus" -- Use system clipboard
opt.wrap = false
opt.splitright = true
opt.splitbelow = true

-- Timeouts
opt.timeoutlen = 300
opt.updatetime = 200

-- Undofile
opt.undofile = true
