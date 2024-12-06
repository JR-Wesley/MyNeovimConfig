return {
  "dense-analysis/ale",
  config = function()
    -- configuration goes here.
    local g = vim.g

    g.ale_linters = {
      lua = { "lua_language_server" },
      verilog = { "verilator" },
      systemverilog = { "verilator" },
    }
    g.ale_completion_enabled = 1
    --g.ale_verilog_verilator_options = "-I ./dff/"
    --g.ale_verilog_verilator_options = '$(find . -name "*.sv")'
  end,
}
