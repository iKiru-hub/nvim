local g = vim.g
local o = vim.o  -- global options
local b = vim.bo -- buffer options

-- cmd('syntax on')
-- vim.api.nvim_command('filetype plugin indent on')

o.termguicolors = true
-- o.background = 'dark'

-- Do not save when switching buffers
-- o.hidden = true

-- Decrease update time
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true

-- Better editing experience
o.expandtab = true
o.expandtab = true
o.shiftwidth = 4
o.softtabstop = 4

-- o.smarttab = true
o.cindent = true
o.autoindent = true
-- o.wrap = true
o.textwidth = 300
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.list = true

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
-- o.undodir = '/tmp/'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- BUG: this won't update the search count after pressing `n` or `N`
-- When running macros and regexes on a large file, lazy redraw tells neovim/vim not to draw the screen
-- o.lazyredraw = true

-- Better folds (don't fold by default)
-- o.foldmethod = 'indent'
-- o.foldlevelstart = 99
-- o.foldnestmax = 3
-- o.foldminlines = 1

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '

-- copypaste to clipboard instead of the nvim buffer 
vim.cmd("set clipboard=unnamed")

-- set the colorscheme
vim.o.termguicolors = true
vim.cmd("set t_Co=256")

vim.cmd(
    [[colorscheme catppuccin]]
)

-- Transparent background for floating windows
vim.api.nvim_set_hl(0, "NormalNC", { bg="none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg="none" })
vim.api.nvim_set_hl(0, "Folded", { bg="none" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg="none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg="none" })
vim.api.nvim_set_hl(0, "LineNr", { bg="none" })
vim.api.nvim_set_hl(0, "VertSplit", { bg="none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg="none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg="none" })
vim.api.nvim_set_hl(0, "Search", { bg="none" })
vim.api.nvim_set_hl(0, "HorizontalSplit", { bg="none" })
vim.api.nvim_set_hl(0, "search", { bg="none" })



