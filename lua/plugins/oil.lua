local plugin = nil

function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local dir = require("oil").get_current_dir(bufnr)
  if dir then
    return vim.fn.fnamemodify(dir, ":~")
  else
    -- If there is no current directory (e.g. over ssh), just show the buffer name
    return vim.api.nvim_buf_get_name(0)
  end
end

local show_detail_view = false
local function toggle_detail_view()
  show_detail_view = not show_detail_view
  if show_detail_view then
    plugin.set_columns({ "icon", "permissions", "size", "mtime" })
  else
    plugin.set_columns({ "icon" })
  end
end

return {{
  "stevearc/oil.nvim", tag = "v2.15.0",
  lazy = false,
  dependencies = { "echasnovski/mini.icons" },
  init = function()
    plugin = require("oil")
  end,
  opts = {
    win_options = { winbar = "%!v:lua.get_oil_winbar()" },
    keymaps = {
      ["gd"] = { desc = "Toggle file detail view", callback = toggle_detail_view },
      ["<C-p>"] = { "actions.preview", opts = { split = "botright" } },
      ["<C-s>"] = { "actions.select", opts = { vertical = true, split = "botright" } },
      ["<C-h>"] = { "actions.select", opts = { horizontal = true, split = "botright" } },
    },
    view_options = {
      show_hidden = true
    }
  },
}}
