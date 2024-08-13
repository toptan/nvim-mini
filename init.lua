require("user.launch") -- This has to be the first
require("user.options")
require("user.keymaps")

spec("user.colorschemes.kanagawa")
spec("user.mini")
spec("user.toggleterm")
spec("user.mason")
spec("user.mason-null-ls")
spec("user.lspconfig")
spec("user.none-ls")
spec("user.treesitter")
spec("user.neogit")
spec("user.gitsigns")

require("user.lazy") -- This has to be after plugins

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
require("user.modules.completion").setup()
