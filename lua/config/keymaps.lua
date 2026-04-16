vim.keymap.set('i', '<C-Space>', function()
  vim.lsp.completion.get()
end)

vim.keymap.set('n', '<LocalLeader>d', vim.cmd.bd)
