local builtin = require('telescope.builtin')

-- note: I cleaned this file to start all over again

-- open fuzzy finder
vim.keymap.set('n', '<leader>f', function()
  builtin.find_files()
end)

-- grep_string
vim.keymap.set('n', '<leader>g', function()
  builtin.grep_string({
    search = vim.fn.input('Grep > ')
  })
end)

