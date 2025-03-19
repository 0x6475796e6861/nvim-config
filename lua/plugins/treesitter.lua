return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
	ensure_installed = {
	  "go", "gomod", "gosum", "gotmpl", "gowork", "templ",
	  "python", "jinja", "pymanifest",
	  "sql", "proto",
	  "html", "css", "scss", "javascript", "jsdoc", "typescript", "tsx", "astro",
	  "bash",
	  "lua", "luadoc",
	  "cmake", "make",
	  "dockerfile",
	  "dot",
	  "editorconfig",
	  "csv", "tsv", "json", "json5", "yaml", "xml",
	  "toml",
	  "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
	  "ssh_config",
	  "desktop",
	  "gpg",
	  "jq",
	  "markdown", "markdown_inline",
	  "todotxt",
	  "nginx",
	  "vim", "vimdoc",
	  "http",
	  "regex",
	  "tmux",
	  "query",
	},
	auto_install = false,
	highlight = {
	  enable = true,
	  disable = function(lang, buf)
	      local max_filesize = 100 * 1024 * 1024 -- 100 MB
	      local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
	      if ok and stats and stats.size > max_filesize then
		  return true
	      end
	  end,
	  additional_vim_regex_highlighting = false,
	},
      })
    end
  }
}
