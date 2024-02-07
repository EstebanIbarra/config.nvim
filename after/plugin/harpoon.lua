-- UI
local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end
  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

-- This remap is useful if you want to use the Telescope UI
-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end, { desc = "Open harpoon window" })

vim.keymap.set('n', '<leader>a', function() harpoon:list():append() end)

-- This remap is useful if you want to use the default harpoon UI
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- This remaps apply only to MacOS
vim.keymap.set('n', '˙', function() harpoon:list():select(1) end)
vim.keymap.set('n', '∆', function() harpoon:list():select(2) end)
vim.keymap.set('n', '˚', function() harpoon:list():select(3) end)
vim.keymap.set('n', '¬', function() harpoon:list():select(4) end)
-- This remaps apply to every other OS
--[[
vim.keymap.set('n', '<M-h>', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<M-j>', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<M-k>', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<M-l>', function() harpoon:list():select(4) end)
--]]
