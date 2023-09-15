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
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- note-taking
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.note-taking.neorg", },
  {"neorg",
    opts = {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.keybinds"] = {}, -- Adds default keybindings
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          }, -- Enables support for completion plugins
          ["core.journal"] = {}, -- Enables support for the journal module
          ["core.export"] = {},
          ["core.export.markdown"] = {
            config = {
              extension = "md",
              extensions = "all",
              metadata = {
                ["start"] = "---",
                ["end"] = "---",
              }
            }
          },
          ["core.summary"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode"
            }
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
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
      }
    },
  -- editor plugins
  { import = "astrocommunity.editing-support.zen-mode-nvim" } ,
  -- git
  { import = "astrocommunity.git.neogit" },
  -- markdown & latext
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" }
}
