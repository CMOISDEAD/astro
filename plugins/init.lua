return {
  ["savq/melange"] = {},
  ["rebelot/kanagawa.nvim"] = {},
  ["mfussenegger/nvim-jdtls"] = {},
  ["sainnhe/gruvbox-material"] = {},
  ["mrjones2014/lighthaus.nvim"] = {},
  ["B4mbus/oxocarbon-lua.nvim"] = {},
  ["folke/tokyonight.nvim"] = {},
  ["lunarvim/darkplus.nvim"] = {},
  -- begin dap
  ["mfussenegger/nvim-dap"] = {
    requires = {
      "Pocco81/DAPInstall.nvim",
      "theHamsta/nvim-dap-virtual-text",
      "mfussenegger/nvim-dap-python",
      "nvim-telescope/telescope-dap.nvim",
      { "leoluz/nvim-dap-go", module = "dap-go" },
      { "jbyuki/one-small-step-for-vimkind", module = "osv" },
    },
    config = require "user.plugins.nvim-dap",
  },
  ["mfussenegger/nvim-dap-python"] = {
    config = require("dap-python").setup "~/Documents/programacion/python/.virtualenvs/debugpy/bin/python",
  },
  ["rcarriga/nvim-dap-ui"] = {
    config = require("dapui").setup {},
    -- config = require "user.plugins.nvim-dap-ui",
  },
  ["jayp0521/mason-nvim-dap.nvim"] = {},
  -- end dap
  ["catppuccin/nvim"] = {
    as = "catppuccin",
    config = require "user.plugins.catppuccin",
  },
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
  ["sindrets/diffview.nvim"] = {},
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = require "user.plugins.trouble",
  },
  ["lervag/vimtex"] = {},
  ["iamcco/markdown-preview.nvim"] = {
    config = function() vim.fn["mkdp#util#install"]() end,
  },
}
