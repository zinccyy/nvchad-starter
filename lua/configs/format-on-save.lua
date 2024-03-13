local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    c = formatters.lsp,
    cpp = formatters.lsp,
  },
  auto_commands = true,
  user_commands = true,
})
