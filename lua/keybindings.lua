
vim.g.mapleader = ' '

-- a function to map a key (k) to an action (v)
-- in a defined mode (m)
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent=true })
end

-----------------
-- Environment --
-----------------

-- open ~/.config/nvim/help.txt in a new tab with <leader>H 
-- map('n', '<leader>H', ':tabnew ~/.config/nvim/help.txt<CR>')

-- open ~/.config/nvim/help.txt in a new toggle panel with <leader>H 
map('n', '<leader>H', ':vnew ~/.config/nvim/help.txt<CR>')

-- mimic shell movements 
-- : in append mode, with <ctrl + e> go to endline in append mode
map('i', '<C-E>', '<ESC>A')
map('i', '<C-A>', '<ESC>I')

-- exit terminal model with esc
map('t', '<Esc>', '<C-\\><C-n>')

-- NERDtree --
map('n', '<leader>n', ':NERDTreeToggle<CR>')  -- open NERDTree with <leader> + n

-----------------
-- Coding Flow --
-----------------

-- Git --
-- git add . + git commit -m "online update" + git push
map('n', '<leader>G', ':w<CR>:!git add .<CR>:!git commit -m "online update"<CR>:!git push<CR>')

-- Python --
-- save file + compile python file with <leader>r
map('n', '<leader>r', ':w<CR>:!python %<CR>')
-- map('n', '<leader>R', ':w<CR>:vsp | :cd %:p:h |:terminal {python utils.py}<CR>')

-- open terminal in current directory with <leader>R, then with "ipy -i file.py" to run python file
map('n', '<leader>R', ':w<CR>:vsp | :cd %:p:h | :exec "terminal" | :startinsert<CR>')

-- Rust --
-- compile rust file with <leader>e
map('n', '<leader>E', ':w<CR>:RustRun<CR>')
-- compile rust file using "cargo run" with <leader>E
map('n', '<leader>e', ':w<CR>:vsp | :cd %:p:h |:terminal {cd ..; cargo run}<CR>')

-- Tagbar --
-- open tagbar with <leader> + t
map('n', '<leader>t', ':TagbarToggle<CR>')
-- close tagbar with <leader> + T
map('n', '<leader>T', ':TagbarClose<CR>')

-- SPLIT --
map('n', '<leader>v', ':vsp<CR>')  -- vertical split
map('n', '<leader>q', ':wq<CR>')  -- close current window

-- Debugger --
map('n', '<leader>d', ':w<CR>:lua require"dap".toggle_breakpoint()<CR>')
map('n', '<leader>D', ':w<CR>:lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
map('n', '<C-c>', ':lua require"dap".continue()<CR>')
map('n', '<C-d>', ':lua require"dap".disconnect()<CR>')
map('n', '<C-i>', ':lua require"dap".step_into()<CR>')
map('n', '<C-a>', ':lua require"dap".step_over()<CR>')
map('n', '<C-g>', ':lua require"dap".step_out()<CR>')

