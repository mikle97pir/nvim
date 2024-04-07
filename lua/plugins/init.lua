return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua", "buf-language-server",
  			"html-lsp", "css-lsp" , "prettier", "gopls", "golines", "gofumpt", "goimports-reviser", "json-lsp"
  		},
  	},
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python", "go", "json", "csv", "julia", "bash", "proto"
  		},
  	},
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function ()
      return require "configs.null-ls"
    end
  },
  {
    "olexsmir/gopher.nvim",
    ft="go",
  config = function (_, opts)
      require("gopher").setup(opts)
    end,
    build = function ()
      vim.cmd [[silent! GoInstallDeps]]
    end
  }
}
