-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("nvim-treesitter.install").prefer_git = true
require("lazy").setup({ { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" } })
-- 对齐文本，
require("mini.align").setup({})
