return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      python = { "autopep8" },
      -- @my config
      verilog = { "verible" }, ----verilog-format" },
      systemverilog = { "verible" }, --verilog-format" },
      --rust = { "rusfmt" },
      lua = { "stylua" },
      go = { "gofmt" },
      html = { "prettier" },
      ccs = { "prettier" },
      --json = { "deno_fmt" },
    },
  },
}
