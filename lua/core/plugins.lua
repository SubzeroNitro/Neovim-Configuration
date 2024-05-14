local M = {}

M.config = {
    {
		"nvim-tree/nvim-web-devicons",
		enabled = vim.g.have_nerd_font
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
    },
	{
		"folke/which-key.nvim",
		event = "VeryLazy"
    },
    {
		"neovim/nvim-lspconfig",
		dependencies = {
			{ 
				"williamboman/mason.nvim",
				config = true
			},
			{
				"j-hui/fidget.nvim",
				tag = "legacy",
				config = true
			},
			{
				"folke/neodev.nvim",
				config = true
			},
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim"
		}
    },
    {
		"hrsh7th/nvim-cmp",
		config = true,
		dependencies = {
			{
				"L3MON4D3/LuaSnip",
				dependencies = {
					"rafamadriz/friendly-snippets"
				}
			},
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"windwp/nvim-autopairs"
		}
    }
}

function M.initialize()
	require("luasnip.loaders.from_vscode").lazy_load()

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
			},
			{
				name = "path"
			}
		}
    })
end

return M
