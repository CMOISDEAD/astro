return {
  disabled = {
    "clang_format",
  },
  -- only enable null-ls for javascript files
  -- filter = function(client)
  --   if vim.bo.filetype == "cs" then return client.name == "null-ls" end
  -- end,
}
