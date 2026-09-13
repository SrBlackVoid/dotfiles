local paths = require("SrBlackVoid.config.local")

return {{
	"obsidian-nvim/obsidian.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim"
	},
	version = "*", -- use latest release, remove to use latest commit
	---@module 'obsidian'
	---@type obsidian.config
	keys = {
		{ "<leader>os", ":Obsidian search<CR>", desc = "[O]bsidian [S]earch" },
		{ "<leader>ob", ":Obsidian backlinks<CR>", desc = "[O]bsidian [B]acklinks" },
		{ "<leader>of", ":Obsidian footnotes<CR>", desc = "[O]bsidian [F]ootnotes" },
		{ "<leader>ol", ":Obsidian links<CR>", desc = "[O]bsidian [L]inks" },
		{ "<leader>ot", ":Obsidian today<CR>", desc = "[O]bsidian [T]oday's Note" },
		{ "<leader>od", ":Obsidian dailies<CR>", desc = "[O]bsidian [D]aily Notes" },
	},
	opts = {
		legacy_commands = false, -- this will be removed in 4.0.0
		picker = {
			name = "telescope.nvim"
		},
		workspaces = paths.obsidian_vaults,
	},
}}
