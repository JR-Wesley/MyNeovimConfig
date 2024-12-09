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
    formatters = {
      verible = {
        prepend_args = {
          --   "distribution_items_alignment",
          --          "align",
          -- "--assignment_statement_alignment",
          -- "flush-left",
          -- "--module_net_variable_alignment",
          --          "flush-left",
          --"--named_port_alignment",
          --"flush-left",
          --"--named_parameter_alignment",
          --"flush-left",
          --"--formal_parameters_alignment",
          --"align",
          --"--module_net_variable_alignment",
          --"align",
          --"--port_declarations_alignment",
          --"align",
          --"--port_declarations_right_align_packed_dimensions",
          --"true",
        },
      },
    },
  },
}
