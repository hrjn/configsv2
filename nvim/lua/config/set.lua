vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs & indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.wrap = false

-- Backups and undotree
vim.opt.swapfile = false -- Disable swapfile 
vim.opt.backup = false -- Disable backup file
vim.opt.undofile = true -- Enable undodir file
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir" 

-- Search
vim.opt.hlsearch = false -- Turn off search result hightlighting
vim.opt.incsearch = true -- Highlight current matches as you type the pattern

-- Scrolling
vim.opt.scrolloff = 8 -- How many lines are visible above and below cursor
vim.opt.signcolumn = "yes" -- Always enable sign column display