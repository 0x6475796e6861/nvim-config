return {{
  "nvim-telescope/telescope.nvim", tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      preview = { filesize_limit = 10 },
      mappings = {
        i = {
          ["<C-k>"] = "move_selection_next",
          ["<C-j>"] = "move_selection_previous",
        }
      }
    },
    pickers = {
      find_files = { hidden = true }
    }
  }
}}
