return require('packer').startup(
    function()

        --------------------
        -- Packer Manager --
        --------------------

    	use 'wbthomason/packer.nvim'

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
        -- use 'tribela/vim-transparent'
        
        -----------------------------
        -- Treesitter Highlighting --
        -----------------------------
        
        use { -- Highlight, edit, and navigate code
            'nvim-treesitter/nvim-treesitter',
            run = function()
            pcall(require('nvim-treesitter.install').update { with_sync = true })
          end,
         }

        -------------
        -- Airline --
        -------------
        use {'vim-airline/vim-airline'}

        -------------------------
        -- Progamming workflow --
        -------------------------
        
        -- auto-pair --
        use {
	        "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }

        -- tagbar --
        use {"majutsushi/tagbar"}

        -- commentary --
        use {"tpope/vim-commentary"}

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

        -- which plugin --
        use {"folke/which-key.nvim"}

        -- debugging --
        
        -- dap install.nvim 
        use {"Pocco81/DAPInstall.nvim"}

        use {
          "mfussenegger/nvim-dap",
          opt = true,
          event = "BufReadPre",
          module = { "dap" },
          wants = { "nvim-dap-virtual-text", "DAPInstall.nvim", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
          requires = {
            "Pocco81/DAPInstall.nvim",
            "theHamsta/nvim-dap-virtual-text",
            "rcarriga/nvim-dap-ui",
            "mfussenegger/nvim-dap-python",
            "nvim-telescope/telescope-dap.nvim",
            { "jbyuki/one-small-step-for-vimkind", module = "osv" },
          },
          config = function()
            require("configs.dap").setup()
          end,
        }
        
        -- github copilot --
        use {"github/copilot.vim"}

        ----------------------
        -- Neovim Dashboard --
        ----------------------

        use {"kyazdani42/nvim-tree.lua"}
        use {"kyazdani42/nvim-web-devicons"}
        
        --  end,
        --  requires = {'nvim-tree/nvim-web-devicons'}
        --}
        
        --use {
        --  'glepnir/dashboard-nvim',
        --  event = 'VimEnter',
        --  theme = 'hyper',
        --  config = function()
        --    require('dashboard').setup {
              -- config
        --    }
        --  end,
        --  requires = {'nvim-tree/nvim-web-devicons'}
        --}
        

        --use {
        --    'goolord/alpha-nvim',
        --    requires = { 'nvim-tree/nvim-web-devicons' },
        --    config = function ()
        --        require'alpha'.setup(require'alpha.themes.startify'.config)
        --        vim.api.nvim_set_keymap('n', '<leader>a', ':Alpha<CR>', {noremap = true, silent = true})
        --    end
        --}

        use {
            'goolord/alpha-nvim',
            config = function ()
                require 'configs.alpha-dash'
            end
        }
       
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
