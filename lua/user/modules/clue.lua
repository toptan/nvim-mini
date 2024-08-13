-- Setting up key clues

local M = {}

function M.setup()
  local options = {
    triggers = {
      -- Leader triggers
      { mode = "n", keys = "<leader>" },
      { mode = "x", keys = "<leader>" },

      -- 'g' key
      { mode = "n", keys = "g" },
      { mode = "x", keys = "g"},
    },

    clues = {
      { mode = "n", keys = "<leader>b", desc = "+Buffers" },
      { mode = "n" ,keys = "<leader>f", desc = "+Files" },
      { mode = "n", keys = "<leader>l", desc = "+LSP" },
      { mode = "n", keys = "<leader>s", desc = "+Search" },
    },
  }
  require("mini.clue").setup(options)
end

return M
