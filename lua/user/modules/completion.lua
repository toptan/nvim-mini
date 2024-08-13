-- Setup completion

local M = {}

function M.setup()
	require("mini.completion").setup()

	-- local mappings = {
	-- 	{
	-- 		mode = "i",
	-- 		keys = "<Tab>",
	-- 		action = [[pumvisible() ? "\<C-n>" : "\<Tab>"]],
	-- 		opts = { silent = true, noremap = true, desc = "Next choice" },
	-- 	},
	-- 	{
	-- 		mode = "i",
	-- 		keys = "<S-Tab>",
	-- 		action = [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]],
	-- 		opts = { silent = true, noremap = true, desc = "Previous choice" },
	-- 	},
	-- }
	--
	-- require("user.utils").setup_keys(mappings)

	local imap_expr = function(lhs, rhs)
		vim.keymap.set("i", lhs, rhs, { expr = true })
	end
	imap_expr("<Tab>", [[pumvisible() ? "\<C-n>" : "\<Tab>"]])
	imap_expr("<S-Tab>", [[pumvisible() ? "\<C-p>" : "\<S-Tab>"]])
end

return M
