local dashboard = require("alpha.themes.dashboard")
local header = {
  type = "text",
  val = {
    [[▓█████▄  ▒█████   ▒█████   ███▄ ▄███▓]],
    [[▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██▒▀█▀ ██▒]],
    [[░██   █▌▒██░  ██▒▒██░  ██▒▓██    ▓██░]],
    [[░▓█▄   ▌▒██   ██░▒██   ██░▒██    ▒██ ]],
    [[░▒████▓ ░ ████▓▒░░ ████▓▒░▒██▒   ░██▒]],
    [[ ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒░   ░  ░]],
    [[   ░        ░ ░      ░ ░         ░   ]],
    [[ ░                                   ]],
    [[               N E O V I M           ]],
  },
  opts = {
    position = "center",
    hl = "Type",
    wrap = "overflow",
  }
}

local buttons = {
  type = "group",
  val = {
    { type = "text",    val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
    { type = "padding", val = 1 },
    dashboard.button("SPC n", "  New file"),
    dashboard.button("SPC f f", "  Find file"),
    dashboard.button("SPC f w", "  Find text"),
    dashboard.button("SPC p a", "  Update plugins"),
    dashboard.button("SPC q", "  Quit"),
  },
  position = "center",
}

return {
  { "rcarriga/nvim-notify", enabled = true },
  {
    "goolord/alpha-nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function(plugin, opts)
      require("plugins.configs.alpha")(plugin, opts)
      local config = require("alpha.themes.theta").config
      config.layout[2] = header;
      config.layout[6] = buttons;
      require("alpha").setup(config)
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-media-files.nvim",
      "nvim-telescope/telescope-bibtex.nvim",
      "jvgrootveld/telescope-zoxide",
    },
    config = function(plugin, opts)
      require("plugins.configs.telescope")(plugin, opts)
      local telescope = require "telescope"
      telescope.load_extension "media_files"
      telescope.load_extension "bibtex"
      telescope.load_extension "zoxide"
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "plugins.configs.luasnip" (plugin, opts)
      require("luasnip.loaders.from_vscode").lazy_load { paths = { "~/.config/vscode_snippets/" } } -- load snippets paths
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "jdtls", "clangd" },
    },
  },
}
