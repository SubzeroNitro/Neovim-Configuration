return {
    {
	"nvim-tree/nvim-web-devicons",
    },
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    { 
		"williamboman/mason.nvim",
		config = true
	    },
	    {
		"williamboman/mason-lspconfig.nvim"
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
	}
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
	    icons_enabled = true,
	}
    }
}
