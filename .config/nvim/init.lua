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
            ".git/", "node_modules/", ".venv/", "__pycache__/", ".cache", "bin/", "/Applications/Xcode.app/", 
        }
    }
}
vim.keymap.set('n', '<leader>ff', builtin.find_files, opts) 
vim.keymap.set('n', '<leader>fg', builtin.live_grep,  opts)
vim.keymap.set('n', '<leader>fb', builtin.buffers,  opts)
vim.keymap.set('n', '<leader>fh', builtin.help_tags, opts)
vim.keymap.set('n', '<leader>fs', builtin.lsp_workspace_symbols, opts)

------ gruvbox
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
   contrast = "dark",
    --palette_overrides = {
       -- bright_green = "#73a94d",
   -- },
})


vim.o.background = "dark"
vim.cmd.colorscheme("gruvbox")

vim.api.nvim_set_hl(0, "Todo", { fg = "#ffffff", bg = "#000000", underline = true, bold = true })

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


-- comments
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.opt_local.commentstring = "// %s"
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.opt_local.commentstring = "// %s"
  end,
})

-- autopairs
require('nvim-autopairs').setup {}
-- require('ibl').setup {
--     indent = {char='.'}
-- }

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.opt.termguicolors = true
vim.cmd('set number')
