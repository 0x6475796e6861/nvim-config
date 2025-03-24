return {{
  "ray-x/go.nvim", tag = "v0.10.0",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {},
  event = {"CmdlineEnter"},
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()'
}}
