local M = {}

-- Initialize bvim default configuration and variables
function M:init()
  bvim = vim.deepcopy(require "bvim.config.defaults")

  require("bvim.keymaps").load_defaults()

  local settings = require "bvim.config.settings"
  settings.load_defaults()

  require("user.config")
end

return M
