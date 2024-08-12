require("user.launch")
require("user.options")
require("user.keymaps")

spec("user.colorschemes.kanagawa")
spec("user.mini")
spec("user.toggleterm")
spec("user.mason")
spec("user.lspconfig")

require("user.lazy")

-- vim.cmd("colorscheme kanagawa-lotus")
vim.cmd("colorscheme minischeme")

require("user.modules.starter").setup()
require("user.modules.clue").setup()
require("user.modules.comment").setup()
require("user.modules.files").setup()
require("user.modules.icons").setup()
require("user.modules.statusline").setup()
