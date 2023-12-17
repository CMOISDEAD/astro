return {
  {
    "p00f/clangd_extensions.nvim",
    init = function() table.insert(astronvim.lsp.skip_setup, "clangd") end,
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
    opts = function()
      return {
        server = require("astronvim.utils.lsp").config "clangd",
        extensions = { autoSetHints = false },
      }
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local builtins = require("null-ls").builtins
      opts.sources = {
        -- diagnostics
        -- builtins.diagnostics.standardjs,
        -- formatters
        builtins.formatting.prettierd,
        builtins.formatting.prettier.with {
          filetypes = { "astro" },
        },
        builtins.formatting.black,
        builtins.formatting.pint,
      }
      return opts
    end,
  },
  { "mfussenegger/nvim-jdtls" },
}
