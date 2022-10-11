return function()
  require("nightfox").setup {
    options = {
      transparent = false,
      dim_inactive = false,
      styles = {
        comments = "italic", -- Value is any valid attr-list value `:help attr-list`
        conditionals = "italic",
        constants = "italic",
        functions = "italic,bold",
        keywords = "bold",
      },
      inverse = { -- Inverse highlight for different types
        match_paren = true,
        search = true,
      },
      modules = {
        barbar = false,
        dashboard = true,
        fern = false,
        fidget = false,
        gitgutter = false,
        glyph_palette = false,
        illuminate = false,
        lightspeed = false,
        lsp_saga = false,
        lsp_trouble = false,
        modes = false,
        neogit = false,
        nvimtree = false,
        pounce = false,
        sneak = false,
        symbols_outline = false,
      },
    },
    specs = {
      all = {
        telescope = {
          bg_alt = "bg2",
          bg = "bg1",
          fg = "fg1",
          green = "green",
          red = "red",
        },
      },
    },
    groups = {
      all = {
        NormalFloat = { bg = "#000000", link = "Normal" },
        WhichKeyFloat = { bg = "#000000" },
        HighlightURL = { style = "underline" },
        MiniIndentscopeSymbol = { link = "PreProc" },
        TelescopeBorder = { fg = "telescope.bg_alt", bg = "telescope.bg" },
        TelescopeNormal = { bg = "telescope.bg" },
        TelescopePreviewBorder = { fg = "telescope.bg", bg = "telescope.bg" },
        TelescopePreviewTitle = { fg = "telescope.bg", bg = "telescope.green" },
        TelescopePromptBorder = { fg = "telescope.bg_alt", bg = "telescope.bg_alt" },
        TelescopePromptNormal = { fg = "telescope.fg", bg = "telescope.bg_alt" },
        TelescopePromptPrefix = { fg = "telescope.red", bg = "telescope.bg_alt" },
        TelescopePromptTitle = { fg = "telescope.bg", bg = "telescope.red" },
        TelescopeResultsBorder = { fg = "telescope.bg", bg = "telescope.bg" },
        TelescopeResultsTitle = { fg = "telescope.bg", bg = "telescope.bg" },
      },
    },
  }
end
