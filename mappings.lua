return {
  n = {
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>fz"] = { "<cmd>Telescope zoxide list<cr>", desc = "Find in zoxide" },
    ["<leader>fe"] = { "<cmd>IconPickerNormal<cr>", desc = "Find emoji" },
    ["<leader>fE"] = { "<cmd>IconPickerYank<cr>", desc = "Find emoji and copy" },
    ["<leader>j"] = { name = "Jump to" },
    ["<leader>jc"] = { "<cmd>HopChar1<cr>", desc = "Jump character" },
    ["<leader>jC"] = { "<cmd>HopChar2<cr>", desc = "Jump characters" },
    ["<leader>jl"] = { "<cmd>HopLine<cr>", desc = "Jump line" },
    ["<leader>jp"] = { "<cmd>HopPattern<cr>", desc = "Jump pattern" },
    ["<leader>jw"] = { "<cmd>HopWord<cr>", desc = "Jump word" },
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    ["<leader>r"] = { name = "Rest Nvim" },
    ["<leader>rr"] = { "<Plug>RestNvim", desc = "Run HTTP request" },
  },
}
