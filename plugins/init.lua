return {
  { "lervag/vimtex",            lazy = false },
  { "lunarvim/darkplus.nvim" },
  { "ethanholz/nvim-lastplace" },
  { "sainnhe/gruvbox-material", lazy = false },
  {
    "mfussenegger/nvim-jdtls", -- load jdtls on module
    init = function()
      vim.api.nvim_create_autocmd("Filetype", {
        pattern = "java", -- autocmd to start jdtls
        callback = function(opts)
          if opts.root_dir and opts.root_dir ~= "" then
            require("jdtls").start_or_attach(require("astronvim.utils.lsp").config "jdtls")
          end
        end,
      })
    end
  },
  {
    "p00f/clangd_extensions.nvim",
    event = "User AstroLspSetup",
    opts = function() return { server = require("astronvim.utils.lsp").config "clangd" } end,
  },
  {
    "folke/todo-comments.nvim",
    config = function()
      require("todo-comments").setup()
    end
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup()
    end
  },
  {
    "vigoux/notifier.nvim",
    lazy = false,
    config = function()
      require 'notifier'.setup {}
    end,
    enabled = false
  },
}
