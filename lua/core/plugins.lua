local M = {}

M.table = {
    {
		"nvim-tree/nvim-web-devicons",
    },
    {
		"neovim/nvim-lspconfig",
		dependencies = {
			{ 
				"williamboman/mason.nvim",
				config = true,
				opts = {}
			},
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {}
			},
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				opts = {}
			},
			{
				"j-hui/fidget.nvim",
				tag = "legacy",
				opts = {}
			},
			{
				"folke/neodev.nvim",
				opts = {}
			}
		},
		opts = {}
    },
    {
		"hrsh7th/nvim-cmp",
		dependencies = {
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"hrsh7th/cmp-nvim-lsp",
			"windwp/nvim-autopairs",
			"hrsh7th/cmp-path"
		},
		opts = {}
    },
    {
		"folke/which-key.nvim"
    },
    {
		"zaldih/themery.nvim",
		opts = {
			themes = {},
			themeConfigFile = "~/.config/nvim/lua/config/theme.lua",
			livePreview = true
		}
    },
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			icons_enabled = true
		}
    }
}

function M.initialize()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    
    luasnip.config.setup()

    cmp.setup({
	snippet = {
	    expand = function (arg)
		luasnip.lsp_expand(arg.body)
	    end
	},
	completion = {
	    completeopt = "menu,menuone,noinsert"
	},
	sources = {
	    {
		name = "nvim_lsp"
	    },
	    {
		name = "luasnip"
	    }
	}
    })
end

return M
