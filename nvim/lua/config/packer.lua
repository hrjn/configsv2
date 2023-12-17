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

end)

