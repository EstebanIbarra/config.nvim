vim.g.copilot_no_tab_map = true

vim.api.nvim_set_keymap('i', '<C-l>', 'copilot#Accept("<CR")', { expr = true, silent = true })
vim.keymap.set('i', '<C-k>', 'copilot#Previous()', { expr = true, silent = true })
vim.keymap.set('i', '<C-j>', 'copilot#Next()', { expr = true, silent = true })
