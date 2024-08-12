-- Setting up commenting

local M = {}

function M.setup()
  local options = {
    mappings = {
      comment_line = "<leader>/",
      comment_visual = "<leader>/",
    },
  }

  require("mini.comment").setup(options)
end

return M
