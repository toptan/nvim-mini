-- Setup some pickers

local M = {}

function M.setup()
	require("mini.pick").setup()
	local utils = require("user.utils")
	local mappings = {
		{
			mode = "n",
			keys = "<leader>bb",
			action = "<cmd>lua MiniPick.builtin.buffers()<cr>",
			opts = { noremap = true, silent = true, desc = "Pick buffer" },
		},
		{
			mode = "n",
			keys = "<leader>ff",
			action = "<cmd>lua MiniPick.builtin.files()<cr>",
			opts = { noremap = true, silent = true, desc = "Find files" },
		},
		{
			mode = "n",
			keys = "<leader>ft",
			action = "<cmd>lua MiniPick.builtin.grep_live()<cr>",
			opts = { noremap = true, silent = true, desc = "Grep files" },
		},
		{
			mode = "n",
			keys = "<leader>fh",
			action = "<cmd>lua MiniPick.builtin.help()<cr>",
			opts = { noremap = true, silent = true, desc = "Search help" },
		},
	}
	utils.setup_keys(mappings)
end

return M
