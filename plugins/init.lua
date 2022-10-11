return {
  -- ui
  ["savq/melange"] = {},
  ["rebelot/kanagawa.nvim"] = {},
  ["mfussenegger/nvim-jdtls"] = {},
  ["sainnhe/gruvbox-material"] = {},
  ["EdenEast/nightfox.nvim"] = {
    config = require "user.plugins.nightfox",
  },
  ["sindrets/winshift.nvim"] = {
    cmd = "WinShift",
    config = require "user.plugins.winshift",
  },
  ["folke/todo-comments.nvim"] = {
    requires = "nvim-lua/plenary.nvim",
    config = function() require("todo-comments").setup {} end,
  },
  -- utility
  ["ethanholz/nvim-lastplace"] = {
    config = require "user.plugins.nvim-lastplace",
  },
  ["phaazon/hop.nvim"] = {
    branch = "v2",
    config = function() require("hop").setup {} end,
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    config = require "user.plugins.telescope-project",
  },
  ["jvgrootveld/telescope-zoxide"] = {
    config = require "user.plugins.telescope-zoxide",
  },
  ["ur4ltz/surround.nvim"] = {
    event = "BufRead",
    config = function()
      require("surround").setup {
        mappings_style = "surround",
        map_insert_mode = false,
      }
    end,
  },
  -- git
  ["sindrets/diffview.nvim"] = {},
  -- lsp
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = require "user.plugins.trouble",
  },
}
