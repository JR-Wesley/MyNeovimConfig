-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- @my config: copyied from fanlumaster
-- toggle color between 雷姆蓝 and 拉姆粉
local color_switch = 0
local function toggle_color()
  if color_switch == 1 then
    color_switch = 0
    vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#ffb6c1")
  else
    color_switch = 1
    vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#91bef0")
  end
end
map("n", "<leader><leader>t", function()
  toggle_color()
end, { desc = "Toggle gui cursor color" })

-- @my config: change some keymaps.
-- first `h`, then `w` for the next words, `e` for the next end of words.
-- Capitalize for the opposite direction.
-- for hop.nvim
local hop = require("hop")
local directions = require("hop.hint").HintDirection
local positions = require("hop.hint").HintPosition
map({ "n", "v" }, "<leader>hw", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR })
end, { desc = "Go to next any begining of words" })
map({ "n", "v" }, "<leader>he", function()
  hop.hint_words({ direction = directions.AFTER_CURSOR, hint_position = positions.END })
end, { desc = "Go to next any end of words" })
map({ "n", "v" }, "<leader>hW", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to previous any begining of words" })
map({ "n", "v" }, "<leader>hE", function()
  hop.hint_words({ direction = directions.BEFORE_CURSOR, hint_position = positions.END })
end, { desc = "Go to previous any end of words" })
--map({ "n", "v" }, "<leader><leader>l", function()
--  hop.hint_camel_case({ direction = directions.AFTER_CURSOR })
--end, { desc = "Go to next any begining of words considering camel case." })
-- leader leader h
--map({ "n", "v" }, "<leader><leader>h", function()
--  hop.hint_camel_case({ direction = directions.BEFORE_CURSOR })
--end, { desc = "Go to next any begining of words considering camel case." })
map({ "n", "v" }, "<leader>hl", function()
    hop.hint_lines({ direction = directions.AFTER_CURSOR })
    end, { desc = "Go to line below" })
map({ "n", "v" }, "<leader>hL", function()
hop.hint_lines({ direction = directions.BEFORE_CURSOR })
end, { desc = "Go to line above" })
