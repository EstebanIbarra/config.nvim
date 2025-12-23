function InstallParsersIfMissing()
  local ts = require 'nvim-treesitter'
  local required = {
    'bash',
    'c',
    'cpp',
    'go',
    'gomod',
    'gosum',
    'javascript',
    'json',
    'lua',
    'luadoc',
    'markdown',
    'markdown_inline',
    'python',
    'query',
    'rust',
    'toml',
    'typescript',
    'vim',
    'vimdoc',
    'yaml',
    'zsh',
  }
  local installed = ts.get_installed('parsers')

  local installed_set = {}
  for _, v in ipairs(installed) do
    installed_set[v] = true
  end

  local missing = {}
  for _, v in ipairs(required) do
    if not installed_set[v] then
      table.insert(missing, v)
    end
  end

  if missing and next(missing) ~= nil then
    ts.install(missing)
  end

  ts.update()
end

InstallParsersIfMissing()
