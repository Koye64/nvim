-- Oil.nvim --

vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- ToggleTerm --

local modes = { "n", "v", "i", "t", "x" }
local desc = "Toggle ToggleTerm"

vim.keymap.set(modes, "<C-_>", "<CMD>ToggleTerm<CR>", { desc = desc })
vim.keymap.set(modes, "<C-/>", "<CMD>ToggleTerm<CR>", { desc = desc })
