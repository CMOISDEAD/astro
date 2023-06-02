return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local builtins = require("null-ls").builtins
      opts.sources = {
        -- diagnostics
        builtins.diagnostics.standardjs,
        -- formatters
        builtins.formatting.prettierd,
        builtins.formatting.black,
        builtins.formatting.pint,
      }
      return opts
    end,
  },
}
