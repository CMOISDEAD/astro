return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local builtins = require("null-ls").builtins
      opts.sources = {
        -- diagnostics
        builtins.diagnostics.eslint_d, --eslint_d
        -- formatters
        builtins.formatting.prettier,  -- prettierd
      }
      return opts
    end,
  },
}
