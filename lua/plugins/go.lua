return {{
  "ray-x/go.nvim", tag = "v0.10.0",
  dependencies = {
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  opt = {},
  event = {"CmdlineEnter"},
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()'
}}
