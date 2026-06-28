vim.pack.add({
  'https://github.com/saghen/blink.lib',
  'https://github.com/saghen/blink.cmp',
  'https://github.com/romus204/tree-sitter-manager.nvim',
  'https://github.com/neovim/nvim-lspconfig',
  'https://github.com/folke/lazydev.nvim',
  'https://github.com/lukas-reineke/indent-blankline.nvim',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/lervag/vimtex',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/folke/which-key.nvim',
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/akinsho/toggleterm.nvim',
  'https://github.com/chomosuke/typst-preview.nvim',
  'https://github.com/nvim-mini/mini.nvim',
  { src = 'https://github.com/catppuccin/nvim', name = 'catpuccin' },
})

require('tree-sitter-manager').setup({
  auto_install = true,
})

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup()

vim.g['vimtex_view_method'] = 'zathura'

require('catppuccin').setup({
  flavour = 'mocha',
  term_colors = true,
  auto_integrations = true,
})

vim.cmd.colorscheme('catppuccin-nvim')

require('lazydev').setup()

local ibl_highlight = {
  "IblIndent",
  "Whitespace",
}
require('ibl').setup({
  indent = {
    highlight = ibl_highlight,
    -- char = "",
  },
  whitespace = {
    highlight = ibl_highlight,
    -- remove_blankline_trail = false,
  },
  -- scope = { enabled = false },
})

require('oil').setup({
  columns = {
    'icon',
    -- 'permissions',
    -- 'size',
    -- 'mtime',
  },
  skip_confirm_for_simple_edits = true,
  view_options = {
    -- show_hidden = true,
    -- show hidden items with g.
    is_always_hidden = function(name, _)
      return name == '.git' or name == '..'
    end
  },
})

require('lualine').setup({
  options = {
    globalstatus = true,
    -- always_show_tabline = true,
  },
  sections = {
    -- lualine_a = { 'mode' },
    -- lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'buffers' },
    -- lualine_x = { 'encoding', 'fileformat', 'filetype' },
    -- lualine_y = { 'progress' },
    -- lualine_z = { 'location' },
  },
  -- inactive_sections = {},
})

require('gitsigns').setup()

require('toggleterm').setup()

require('typst-preview').setup()

require('mini.icons').setup()
require('mini.move').setup()
require('mini.pairs').setup({
  mappings = {
    ["'"] = {
      action = 'closeopen',
      pair = "''",
      -- Don't pair apostrophes in text
      neigh_pattern = '[^%a\\\'].',
      register = { cr = false },
    },
  },
})

vim.lsp.enable({
  'basedpyright',
  'bashls',
  'clangd',
  'gdscript',
  'lua_ls',
  'rust_analyzer',
  'texlab',
  'tinymist',
  'ts_ls',
})
