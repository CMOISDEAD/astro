return {
  o = {
    foldcolumn = "0", -- '0' is not bad
    foldlevel = 99, -- Using ufo provider need a large value, feel free to decrease the value
    foldlevelstart = 99,
    foldenable = false,
    guifont = "AestheticIosevka Nerd Font Mono:h10",
  },
  opt = {
    relativenumber = true,
    number = true,
    spell = true,
    spelllang = { "en_us", "es_es" },
    conceallevel = 2, -- enable conceal
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    swapfile = false,
    wrap = true, -- soft wrap lines
    cmdheight = 0,
    -- showtabline = 0, -- hide bufferline
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true, -- enable completion at start
    autopairs_enabled = true, -- enable autopairs at start
    diagnostics_mode = 3, -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    vimtex_view_method = "zathura",
    user_emmet_leader_key = "<C-Z>",
    neovide_fullscreen = false,
    neovide_transparency = 0.8,
  },
}
