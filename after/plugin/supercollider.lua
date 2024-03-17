local scnvim = require('scnvim')
local map = scnvim.map
local map_expr = scnvim.map_expr

scnvim.setup({
  keymaps = {
    ['<leader>scl'] = map('editor.send_line', {'i', 'n'}),
    ['<leader>scb'] = {
      map('editor.send_block', {'i', 'n'}),
      map('editor.send_selection', 'x')
    },
    ['<leader>scs'] = map('sclang.start'),
    ['<leader>sck'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>scr'] = map('sclang.recompile'),
    ['<leader>scb'] = map_expr('s.boot'),
    ['<leader>scm'] = map_expr('s.meter'),
  },
})
