local Terminal = require("toggleterm.terminal").Terminal
local xplr = Terminal:new { cmd = "xplr", hidden = true }

return {
  n = {
    ["<leader>"] = {
      W = { "<cmd>WinShift<cr>", "Winshift" },
      H = {
        name = "Hop",
        c = { "<cmd>HopChar1<cr>", "Character" },
        C = { "<cmd>HopChar2<cr>", "2 Characters" },
        l = { "<cmd>HopLine<cr>", "Line" },
        p = { "<cmd>HopPattern<cr>", "Pattern" },
        w = { "<cmd>HopWord<cr>", "Word" },
      },
      f = {
        z = { "<cmd>Telescope zoxide<cr>", "zoxide" },
      },
      t = {
        x = {
          function()
            vim.cmd "silent! write"
            xplr:toggle()
          end,
          "File Manager",
        },
      },
    },
  },
  v = {
    ["<leader>"] = {
      h = {
        name = "Hop",
        c = { "<cmd>HopChar1<cr>", "Character" },
        C = { "<cmd>HopChar2<cr>", "2 Characters" },
        l = { "<cmd>HopLine<cr>", "Line" },
        p = { "<cmd>HopPattern<cr>", "Pattern" },
        w = { "<cmd>HopWord<cr>", "Word" },
      },
    },
  },
}
