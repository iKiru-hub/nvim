
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

-- tagbar 
-- open tagbar with <leader> + t
map('n', '<leader>t', ':TagbarToggle<CR>')
-- close tagbar with <leader> + T
map('n', '<leader>T', ':TagbarClose<CR>')

-- exit terminal model with esc
map('t', '<Esc>', '<C-\\><C-n>')

-- Debugger 
map('n', '<leader>d', ':lua require"dap".toggle_breakpoint()<CR>')
map('n', '<C-c>', ':lua require"dap".continue()<CR>')
map('n', '<C-d>', ':lua require"dap".disconnect()<CR>')
map('n', '<C-i>', ':lua require"dap".step_into()<CR>')
map('n', '<C-j>', ':lua require"dap".step_over()<CR>')
map('n', '<C-g>', ':lua require"dap".step_out()<CR>')
