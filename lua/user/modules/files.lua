-- Setting up file explorer

local M = {}

local function toggle_files()
  local files_status = 0 -- 1 is show; 0 is hide
  return function()
    if files_status == 1 then
      files_status = 0
      MiniFiles.close()
    else
      files_status = 1
      MiniFiles.open()
    end
  end
end

function M.setup()
  local options = {
    mappings = {
      go_in = "L",
      go_in_plus = "l",
      go_out = "H",
      go_out_plus = "h",
    },
  }
  require("mini.files").setup(options)

  local utils = require("user.utils")
  local mappings = {
    {
      mode = "n",
      keys = "<leader>e",
      action = toggle_files(),
      opts = { noremap = true, silent = true, desc = "File explorer" },
    },
  }
  utils.setup_keys(mappings)
end

return M
