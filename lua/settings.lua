local g = vim.g
local o = vim.o

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
vim.cmd [[colorscheme sonokai]]

-- set the background to transparent
vim.api.nvim_set_hl(0, "Normal", { bg="none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg="none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg="none" })
vim.api.nvim_set_hl(0, "Folded", { bg="none" })
vim.api.nvim_set_hl(0, "FoldColumn", { bg="none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg="none" })
vim.api.nvim_set_hl(0, "LineNr", { bg="none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg="none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg="none" })
vim.api.nvim_set_hl(0, "VertSplit", { bg="none" })
vim.api.nvim_set_hl(0, "StatusLine", { bg="none" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg="none" })
vim.api.nvim_set_hl(0, "TabLine", { bg="none" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg="none" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg="none" })
vim.api.nvim_set_hl(0, "Pmenu", { bg="none" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg="none" })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg="none" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg="none" })
vim.api.nvim_set_hl(0, "WildMenu", { bg="none" })
vim.api.nvim_set_hl(0, "Visual", { bg="none" })
vim.api.nvim_set_hl(0, "VisualNOS", { bg="none" })
vim.api.nvim_set_hl(0, "Search", { bg="none" })
vim.api.nvim_set_hl(0, "IncSearch", { bg="none" })
vim.api.nvim_set_hl(0, "MatchParen", { bg="none" })
vim.api.nvim_set_hl(0, "NonText", { bg="none" })
vim.api.nvim_set_hl(0, "SpecialKey", { bg="none" })
vim.api.nvim_set_hl(0, "Directory", { bg="none" })
vim.api.nvim_set_hl(0, "Title", { bg="none" })
vim.api.nvim_set_hl(0, "Question", { bg="none" })
vim.api.nvim_set_hl(0, "MoreMsg", { bg="none" })
vim.api.nvim_set_hl(0, "ModeMsg", { bg="none" })
vim.api.nvim_set_hl(0, "ErrorMsg", { bg="none" })
vim.api.nvim_set_hl(0, "WarningMsg", { bg="none" })
vim.api.nvim_set_hl(0, "SpellBad", { bg="none" })
vim.api.nvim_set_hl(0, "SpellCap", { bg="none" })
vim.api.nvim_set_hl(0, "SpellRare", { bg="none" })
vim.api.nvim_set_hl(0, "SpellLocal", { bg="none" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg="none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg="none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg="none" })
vim.api.nvim_set_hl(0, "Conceal", { bg="none" })
vim.api.nvim_set_hl(0, "Cursor", { bg="none" })
vim.api.nvim_set_hl(0, "lCursor", { bg="none" })
vim.api.nvim_set_hl(0, "iCursor", { bg="none" })
vim.api.nvim_set_hl(0, "vCursor", { bg="none" })
vim.api.nvim_set_hl(0, "cCursor", { bg="none" })
vim.api.nvim_set_hl(0, "rCursor", { bg="none" })
vim.api.nvim_set_hl(0, "CursorIM", { bg="none" })
vim.api.nvim_set_hl(0, "CursorColumn", { bg="none" })
vim.api.nvim_set_hl(0, "CursorLine", { bg="none" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg="none" })
vim.api.nvim_set_hl(0, "HorizontalSplit", { bg="none" })


