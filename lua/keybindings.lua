
vim.g.mapleader = ' '

-- a function to map a key (k) to an action (v)
-- in a defined mode (m)
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent=true })
end

-- mimic shell movements 
-- : in append mode, with <ctrl + e> go to endline in append mode
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

-- save file + compile python file with <control + r>
map('n', '<leader>r', ':w<CR>:!python %<CR>')

-- enable transparency 
map('n', '<leader>t', ':set winblend=10<CR>')
map('n', '<leader>T', ':set winblend=0<CR>')

-- exit terminal model with esc
map('t', '<Esc>', '<C-\\><C-n>')
