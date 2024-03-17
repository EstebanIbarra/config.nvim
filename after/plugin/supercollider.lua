local scnvim = require('scnvim')
local map = scnvim.map
local map_expr = scnvim.map_expr

-- Find pandoc
local handle = io.popen('which pandoc')
local pandoc = handle:read('*a')
handle:close()
pandoc = pandoc:gsub('^%s*(.-)%s*$', '%1')
assert(pandoc ~= '', 'Pandoc not found')

scnvim.setup({
  keymaps = {
    -- Global Mappings
    ['<leader>scs'] = map('sclang.start'),
    ['<leader>scr'] = map('sclang.recompile'),
    -- Playback Mappings
    ['<leader>scl'] = map('editor.send_line', 'n'),
    ['<leader>sce'] = {
      map('editor.send_block', 'n'),
      map('editor.send_selection', 'v'),
    },
    ['<leader>sck'] = map('sclang.hard_stop', {'n', 'v'}),
    -- Server Mappings
    ['<leader>scsb'] = map_expr('s.boot'),
    ['<leader>scsr'] = map_expr('s.reboot'),
    ['<leader>scsk'] = map_expr('s.quit'),
    ['<leader>scsm'] = map_expr('s.meter'),
    -- Post Window Mappings
    ['<leader>scwt'] = map('postwin.toggle', {'n', 'v'}),
    ['<leader>scwc'] = map('postwin.open', {'n', 'v'}),
    ['<leader>scwx'] = map('postwin.close', {'n', 'v'}),
    ['<leader>scwd'] = map('postwin.clear', {'n', 'v'}),
  },
  postwin = {
    highlight = true,
    horizontal = true,
    direction = 'bot',
    size = 7,
    fixed_size = 7,
  },
  documentation = {
    cmd = pandoc,
    direction = 'right',
    horizontal = false,
  },
})
