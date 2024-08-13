require("user.launch") -- This has to be first
require("user.options")
require("user.keymaps")

spec("user.colorschemes.kanagawa")
spec("user.mini")
spec("user.toggleterm")
spec("user.mason")
spec("user.mason-null-ls")
spec("user.lspconfig")
spec("user.none-ls")

require("user.lazy")

vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme minischeme")

require("user.modules.starter").setup()
require("user.modules.clue").setup()
require("user.modules.comment").setup()
require("user.modules.files").setup()
require("user.modules.icons").setup()
require("user.modules.statusline").setup()
require("user.modules.bufremove").setup()
require("user.modules.pickers").setup()
require("user.modules.notify").setup()
