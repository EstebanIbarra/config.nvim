vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local bufmap = function(mode, nemo, command)
      vim.keymap.set(mode, nemo, command, { buffer = event.buf, remap = false })
    end

    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    bufmap('n', 'gtd', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover({border = "double", max_width = 80, title = "Documentation", title_pos = "center"})<cr>')
    bufmap('n', '<leader>vws', '<cmd>lua vim.lsp.buf.workspace_symbol()<cr>')
    bufmap('n', '<leader>vd', '<cmd>lua vim.diagnostic.open_float()<cr>')
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.jump({ count = 1 })<cr>')
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.jump({ count = -1 })<cr>')
    bufmap('n', '<leader>vca', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('n', '<leader>vrr', '<cmd>lua vim.lsp.buf.references()<cr>')
    bufmap('n', '<leader>vrn', '<cmd>lua vim.lsp.buf.rename()<cr>')
    bufmap('i', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
  end,
})
