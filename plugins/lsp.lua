return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local builtins = require("null-ls").builtins
      opts.sources = {
        -- diagnostics
        -- builtins.diagnostics.eslint,
        -- formatters
        -- javacript 
        builtins.formatting.prettierd,
        -- python
        builtins.formatting.black,
        -- php
        -- builtins.formatting.phpcsfixer,
        builtins.formatting.pint,
      }
      return opts
    end,
  },
}
