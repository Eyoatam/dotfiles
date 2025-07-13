require("packer").startup(function()
    use 'wbthomason/packer.nvim'
    use "ellisonleao/gruvbox.nvim"
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'L3MON4D3/LuaSnip'
    use 'sbdchd/neoformat'
    use 'nvim-lua/plenary.nvim'
    use 'BurntSushi/ripgrep'
    use 'sharkdp/fd'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'windwp/nvim-autopairs'
    use 'preservim/vimux'
    use 'lukas-reineke/indent-blankline.nvim'
end)
