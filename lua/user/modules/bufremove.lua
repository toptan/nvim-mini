-- Setup bufremove

local M = {}

function M.setup()
  require("mini.bufremove").setup()
  local utils = require("user.utils")
  local mappings = {
    {
      mode = "n",
      keys = "<leader>bd",
      action = "<cmd>lua MiniBufremove.delete()<cr>",
      opts = { noremap = true, silent = true, desc = "Delete buffer" },
    },
    {
      mode = "n",
      keys = "<leader>bp",
      action = "<cmd>bprevious<cr>",
      opts = { noremap = true, silent = true, desc = "Previous buffer" },
    },
    {
      mode = "n",
      keys = "<leader>bn",
      action = "<cmd>bnext<cr>",
      opts = { noremap = true, silent = true, desc = "Next buffer" },
    },
  }
  utils.setup_keys(mappings)
end

return M
