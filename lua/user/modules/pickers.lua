-- Setup some pickers

local M = {}

function M.setup()
	require("mini.pick").setup()
	require("mini.extra").setup()
  local utils = require("user.utils")
	local mappings = {
		{
			mode = "n",
			keys = "<leader>bb",
			action = "<cmd>Pick buffers<cr>",
			opts = { noremap = true, silent = true, desc = "Pick buffer" },
		},
		{
			mode = "n",
			keys = "<leader>ff",
			action = "<cmd>Pick files<cr>",
			opts = { noremap = true, silent = true, desc = "Find files" },
		},
		{
			mode = "n",
			keys = "<leader>ft",
			action = "<cmd>Pick grep_live<cr>",
			opts = { noremap = true, silent = true, desc = "Grep files" },
		},
		{
			mode = "n",
			keys = "<leader>sh",
			action = "<cmd>Pick help<cr>",
			opts = { noremap = true, silent = true, desc = "Search help" },
		},
		{
			mode = "n",
			keys = "<leader>ld",
			action = "<cmd>Pick diagnostic<cr>",
			opts = { noremap = true, silent = true, desc = "Diagnostics" },
		},
	}
	utils.setup_keys(mappings)
end

return M
