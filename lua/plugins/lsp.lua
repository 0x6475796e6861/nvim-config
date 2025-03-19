return {
  {
    "neovim/nvim-lspconfig", tag = "v1.7.0",
  },
  {
    "williamboman/mason.nvim", tag = "v1.11.0",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim", tag = "v1.32.0",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup()
    end
  }
}
