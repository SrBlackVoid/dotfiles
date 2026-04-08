return {{
	'xvzc/chezmoi.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{'<leader>D', function() require("chezmoi.pick").telescope() end, desc = "[D]otfiles" }
	},
	opts = {
		edit = {
			watch = true,
			force = true,
		}
	},
}}
