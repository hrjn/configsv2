-- Load this file by calling `lua require('plugins')` from init.vim

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- lightline (status bar)
    use ('itchyny/lightline.vim')

    -- catppuccin (color theme)
    use { "catppuccin/nvim", as = "catppuccin" }

    -- nvim-tree
    use {
        "nvim-tree/nvim-tree.lua",
        requires = { {"nvim-tree/nvim-web-devicons"} }
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
      }
    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    -- mason
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    -- lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

end)

