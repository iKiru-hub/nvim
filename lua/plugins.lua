
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
        use 'catppuccin/nvim'

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
        
end)
