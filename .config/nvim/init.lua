require('plugins')
require('lsp')
require('nvimcmp')

vim.g.mapleader = ','

-- treesitter
require('nvim-treesitter.configs').setup {
	highlight = {
		enable = true,
	},
}

-- telescope
local opts = {noremap = true, silent = true}
local builtin = require('telescope.builtin')
local telescope = require('telescope')

telescope.setup {
    pickers = {
        find_files = {
            hidden = true,
        }
    },
    defaults = {
        file_ignore_patterns = {
            '.git/', 'node_modules/'
        }
    }
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts) 
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers,  opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)

-- gruvbox
require('gruvbox').setup({
    terminal_colors = true,
    undercurl = true,
    underline = true,
    bold = false,
    italic = {
        strings = false,
        comments = false,
        operators = false,
    },
   contrast = 'hard',
    --palette_overrides = {
       -- bright_green = "#73a94d",
   -- },
})
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- lualine
require('lualine').setup{
    options = {
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_x = {'encoding','filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
}

-- autopairs
require('nvim-autopairs').setup {}
require("ibl").setup {
    --indent = { char = '|' }
}

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.opt.guicursor = ''
vim.opt.termguicolors = true
vim.cmd('set number')
