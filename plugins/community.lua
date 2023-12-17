return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
  -- scrolling
  -- { import = "astrocommunity.scrolling.cinnamon-nvim" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- note-taking
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.note-taking.neorg" },
  {
    "neorg",
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.keybinds"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.journal"] = {},
        ["core.export"] = {},
        ["core.export.markdown"] = {
          config = {
            extension = "md",
            extensions = "all",
            metadata = {
              ["start"] = "---",
              ["end"] = "---",
            },
          },
        },
        ["core.summary"] = {},
        ["core.presenter"] = {
          config = {
            zen_mode = "zen-mode",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              notes = "~/projects/notes",
              college = "~/projects/college",
              dev = "~/projects/dev",
            },
            default_workspace = "notes",
          },
        },
      },
    },
  },
  -- editor plugins
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  { import = "astrocommunity.editing-support.neogen" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- git
  { import = "astrocommunity.git.neogit" },
  -- markdown & latext
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  --  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.astro" },
  -- test
  { import = "astrocommunity.test.neotest" },
  {
    "neotest",
    opts = {
      adapters = {},
    },
  },
  -- utility
  {
    import = "astrocommunity.utility.noice-nvim",
  },
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        { filter = { event = "msg_show", find = "%d+L,%s%d+B" }, opts = { skip = true } }, -- skip save notifications
      },
    },
  },
  -- workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
}
