return {
  "AstroNvim/astrocommunity",
  -- bars and lines
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  -- scrolling
  -- { import = "astrocommunity.scrolling.satellite-nvim" },
  -- color
  { import = "astrocommunity.color.transparent-nvim" },
  -- colorscheme
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.mini-base16" },
  { import = "astrocommunity.colorscheme.melange-nvim" },
  -- completion
  { import = "astrocommunity.completion.copilot-lua" },
  -- note-taking
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  { import = "astrocommunity.note-taking.neorg" },
  {
    "neorg",
    opts = {
      load = {
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
  { import = "astrocommunity.editing-support.yanky-nvim" },
  -- git
  { import = "astrocommunity.git.neogit" },
  -- markdown & latext
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  -- pack
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.java" },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      handlers = {
        clang_format = function() end,
      },
    },
  },
  { import = "astrocommunity.pack.astro" },
  { import = "astrocommunity.pack.quarto" },
  { import = "astrocommunity.pack.typst" },
  -- workflow
  { import = "astrocommunity.workflow.hardtime-nvim" },
  -- motion
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.marks-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- code
  { import = "astrocommunity.code-runner.overseer-nvim" },
  -- media
  { import = "astrocommunity.media.vim-wakatime" },
}
