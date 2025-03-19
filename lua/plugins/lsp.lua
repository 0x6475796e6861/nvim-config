return {
  {
    "neovim/nvim-lspconfig", tag = "v1.7.0",
    opt = {},
  },
  {
    "williamboman/mason.nvim", tag = "v1.11.0",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim", tag = "v1.32.0",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup_handlers({
        function (server_name)
          require("lspconfig")[server_name].setup({})
        end
      })
    end
  }
}
