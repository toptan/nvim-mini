local M = {
  "neogitorg/neogit",
  event = "VeryLazy",
}

function M.config()
  local mappings = {
    {
      mode = "n",
      keys = "<leader>gg",
      action = "<cmd>Neogit<cr>",
      opts = { noremap = true, silent = true, desc = "Neogit" },
    },
  }
  require("user.utils").setup_keys(mappings)

  local icons = require("user.icons")
  require("neogit").setup({
    auto_refresh = true,
    disable_builtin_notifications = false,
    use_magit_keybindings = false,
    -- Change the default way of opening neogit
    kind = "tab",
    -- Change the default way of opening the commit popup
    commit_popup = {
      kind = "split",
    },
    -- Change the default way of opening popups
    popup = {
      kind = "split",
    },
    -- customize displayed signs
    signs = {
      -- { CLOSED, OPENED }
      section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      hunk = { "", "" },
    },
  })
end

return M
