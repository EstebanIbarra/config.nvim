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
	run = function()
            local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
	    ts_update()
        end,
    },
    "nvim-treesitter/playground",
    "nvim-treesitter/nvim-treesitter-context",
    {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" }
    },
    "mbbill/undotree",
    "tpope/vim-fugitive",
    {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
	    -- LSP Support
	    "neovim/nvim-lspconfig",
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
	    -- Autocompletion
	    "hrsh7th/nvim-cmp",
	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "saadparwaiz1/cmp_luasnip",
	    "hrsh7th/cmp-nvim-lsp",
	    "hrsh7th/cmp-nvim-lua",
	    -- Snippets
	    "L3MON4D3/LuaSnip",
	    "rafamadriz/friendly-snippets",
	}
    },
    "github/copilot.vim",
    "eandrju/cellular-automaton.nvim",
})

