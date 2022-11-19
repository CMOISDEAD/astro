local null_ls = require "null-ls"
return {
  sources = {
    -- Generals
    null_ls.builtins.code_actions.gitsigns,
    -- Lua
    null_ls.builtins.formatting.stylua,
    -- Python
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.isort,
    -- Javascript
    null_ls.builtins.formatting.rome,
    -- null_ls.builtins.formatting.prettierd.with { extra_filetypes = { "rmd" } },
    -- C
    -- null_ls.builtins.formatting.clang_format,
    -- Markdown
    -- null_ls.builtins.formatting.remark,
  },
}
