return {
  opt = {
    -- set to true or false etc.
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true, -- sets vim.opt.number
    spell = false, -- sets vim.opt.spell
    signcolumn = "auto", -- sets vim.opt.signcolumn to auto
    wrap = false, -- sets vim.opt.wrap
    cursorcolumn = true,
    guifont = "AestheticIosevka Nerd Font Mono:h10",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_enabled = true, -- enable diagnostics at start
    status_diagnostics_enabled = true, -- enable diagnostics in statusline
    vimtex_view_general_viewer = "zathura",
    vimtext_view_method = "zathura",
    user_emmet_leader_key = "<C-Z>",
  },
}
