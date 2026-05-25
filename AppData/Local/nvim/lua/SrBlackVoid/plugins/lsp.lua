return {{
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },

	dependencies = {
		{ "williamboman/mason.nvim", build = ":MasonUpdate" },
		"williamboman/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},

	keys = {
		{ "<leader>L", ":LspRestart<CR>", desc = "[L]SP Restart" }
	},

	opts = {
		servers = require("SrBlackVoid.lsp.servers"),
	},

	config = function(_, opts)
		require("SrBlackVoid.lsp").setup(opts)
	end,
}}
