-- Treesitter folds
-- vim.o.foldmethod = 'expr'
-- vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.o.foldlevelstart = 99

require('nvim-treesitter.configs').setup({

    -- nvim-treesitter/nvim-treesitter (self config)
    auto_install = true,
    ensure_installed = {
        'help',
        'c',
        'cpp',
        'lua',
        'latex',
        'r',
        'rust',
        'python',
        'javascript',
        'markdown',
        'markdown_inline',
        'html',
        'css',
        'json',
        'bash',
        'yaml',
    },

    -- Install parses synchronously (only applied to 'ensure_installed')
    sync_install = false,

    -- Automatically install mssing parsers when entering buffer
    -- Recommendation: set to false if you don't have 'tree-sitter' CLI install locally
    auto_install = true,

    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
    },
})
