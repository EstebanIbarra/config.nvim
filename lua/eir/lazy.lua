require("lazy").setup({
  "nvim-lua/plenary.nvim",
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "rose-pine/neovim",
    as = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  },
  "nvim-treesitter/nvim-treesitter-context",
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  "mbbill/undotree",
  "tpope/vim-fugitive",
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        'bashls',
        'dotls',
        'jsonls',
        'lua_ls',
        'rust_analyzer',
        'vimls',
        'yamlls',
      }
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = { ui = { border = 'double' } } },
      "neovim/nvim-lspconfig",
    },
  },
  -- Autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "saadparwaiz1/cmp_luasnip",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "github/copilot.vim",
  "eandrju/cellular-automaton.nvim",
  "davidgranstrom/scnvim",
})
