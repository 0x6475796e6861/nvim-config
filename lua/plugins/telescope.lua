return {{
  "nvim-telescope/telescope.nvim", tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      preview = { filesize_limit = 10 },
    },
    pickers = {
      find_files = { hidden = true }
    }
  }
}}
