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

end)

