local M = {}

M.config = {
	"catppuccin/nvim",
	{
		"zaldih/themery.nvim",
		opts = {
			themes = {
				"catppuccin"
			},
			livePreview = true
		}
    },
    {
		"nvim-tree/nvim-web-devicons",
		enabled = vim.g.have_nerd_font
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
		"folke/lazydev.nvim",
		ft = "lua",
		opts = {
			library = {
				{ path = "${3rd}/luv/library", words = { "vim%.uv" } }
			}
		}
	},
	"neovim/nvim-lspconfig",
	{
		"mason-org/mason.nvim",
		opts = {}
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"vtsls"
			}
		}
	},
	{
		"j-hui/fidget.nvim",
		opts = {}
	},
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"windwp/nvim-autopairs",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/nvim-cmp",
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate"
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		opts = {}
	},
	"nvim-telescope/telescope.nvim",
	"nvim-lua/plenary.nvim"
}

function M.initialize()
	require("luasnip.loaders.from_vscode").lazy_load()

	local cmp = require("cmp")
    local luasnip = require("luasnip")

    luasnip.config.setup()

    cmp.setup({
		snippet = {
			expand = function (args)
				luasnip.lsp_expand(args.body)
			end
		},
		completion = {
			completeopt = "menu,menuone,noinsert"
		},
		mapping = cmp.mapping.preset.insert({
			[ "<C-d>" ] = cmp.mapping.scroll_docs(-4),
			[ "<C-u>" ] = cmp.mapping.scroll_docs(4),
			[ "<C-Space>" ] = cmp.mapping.complete(),
			[ "<C-e>" ] = cmp.mapping.abort(),
			[ "<CR>" ] = cmp.mapping.confirm({ select = true }),
			[ "<Tab>" ] = cmp.mapping.confirm({ select = true })
		}),
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

	local capabilities = require("cmp_nvim_lsp").default_capabilities()
	vim.lsp.config("*", capabilities)
end

return M
