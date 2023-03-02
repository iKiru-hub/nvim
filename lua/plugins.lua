return require('packer').startup(
    function()

        --------------------
        -- Packer Manager --
        --------------------

	    use 'wbthomason/packer.nvim'

        -------------------
        -- Neovim Welcom --
        -------------------
        
        use {
            'goolord/alpha-nvim',
            requires = { 'nvim-tree/nvim-web-devicons' },
            config = function ()
                require'alpha'.setup(require'alpha.themes.startify'.config)
                vim.api.nvim_set_keymap('n', '<leader>a', ':Alpha<CR>', {noremap = true, silent = true})
            end
        }

        --use {
        --    'goolord/alpha-nvim',
        --    config = function ()
        --        require'alpha'.setup(require'alpha.themes.dashboard'.config)
        --    end
        --}

        -----------------------
	    -- Colorscheme setup --
        -----------------------

	    use 'gruvbox-community/gruvbox'
        use 'Mofiqul/dracula.nvim'
        use 'folke/tokyonight.nvim'
        use "EdenEast/nightfox.nvim"
        use 'catppuccin/nvim'
        use 'junegunn/vim-emoji'
        use 'gosukiwi/vim-atom-dark'
        use 'sainnhe/sonokai'
        use 'navarasu/onedark.nvim'
        use 'NLKNguyen/papercolor-theme'

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

        -- fuzzy finder --
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
        }
        
        -- autocompletion --
        use {"neomake/neomake"}
        use {"neoclide/coc.nvim", branch='release'}

        -- LSP configuratios & plugins --
        use {
            "williamboman/nvim-lsp-installer",
            "neovim/nvim-lspconfig",
        }
        
        -- github copilot --
        use {"github/copilot.vim"}
        
end)



--------------------------------
-- old plugins no longer used --
--------------------------------

        
-- cpp compiler --
-- use {"cdelledonne/vim-cmake"}


-- fold sub-routines -- now using treesitter
--use {"tmhedberg/SimpylFold"}


-- indentation lines --
-- use "lukas-reineke/indent-blankline.nvim"

-- hop around fast --
-- use {
--    'phaazon/hop.nvim',
--     branch = 'v2', -- optional but strongly recommended
--     config = function()
        -- you can configure Hop the way you like here; see :h hop-config
--      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
--      end
--      }
--
