return require('packer').startup(
    function()
	
        --------------------
        -- Packer Manager --
        --------------------

	    use 'wbthomason/packer.nvim'

        -----------------------
	    -- Colorscheme setup --
        -----------------------

	    -- use 'gruvbox-community/gruvbox'
        -- use 'junegunn/vim-emoji'
        -- use 'Mofiqul/dracula.nvim'
        -- use 'folke/tokyonight.nvim'
        -- use "EdenEast/nightfox.nvim"
        -- use 'catppuccin/nvim'
        -- use 'junegunn/vim-emoji'
        -- use 'Mofiqul/dracula.nvim'
        -- use 'gosukiwi/vim-atom-dark'
        use 'sainnhe/sonokai'
        -- use 'navarasu/onedark.nvim'

        -- vim.o.termguicolors = true
        vim.cmd [[colorscheme sonokai]]

        ------------------
        -- Transparency --
        ------------------
        use 'tribela/vim-transparent'
        
        -----------------------------
        -- Treesitter Highlighting --
        -----------------------------
        
        use { -- Highlight, edit, and navigate code
            'nvim-treesitter/nvim-treesitter',
            run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
          end,
         }

         
        use { -- Additional text objects via treesitter
            'nvim-treesitter/nvim-treesitter-textobjects',
            after = 'nvim-treesitter',
        }

        -------------------------
        -- Progamming workflow --
        -------------------------
        
        -- auto-pair --
        use {
	        "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }

        -- file explorer --
        use {"preservim/nerdtree"}

        -- fold sub-routines --
        use {"tmhedberg/SimpylFold"}
        
        -- autocompletion --
        use {"neomake/neomake"}
        use {"neoclide/coc.nvim", branch='release'}

        -- indentation lines --
        use "lukas-reineke/indent-blankline.nvim"

        -- hop around fast --
        use {
            'phaazon/hop.nvim',
             branch = 'v2', -- optional but strongly recommended
             config = function()
                -- you can configure Hop the way you like here; see :h hop-config
             require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
              end
              }
        
        -- github copilot --
        -- use {"github/copilot.vim"
        --
        -- [[ Configure Treesitter ]]
        -- See `:help nvim-treesitter`
         require('nvim-treesitter.configs').setup {
         --  Add languages to be installed here that you want installed for treesitter
           ensure_installed = { 'c', 'cpp', 'lua', 'python', 'bash', 'help' },

           highlight = { enable = true },
           indent = { enable = true },
           incremental_selection = {
             enable = false,
             keymaps = {
               init_selection = '<c-space>',
               node_incremental = '<c-space>',
               scope_incremental = '<c-s>',
               node_decremental = '<c-backspace>',
             },
           },
         }
end)
