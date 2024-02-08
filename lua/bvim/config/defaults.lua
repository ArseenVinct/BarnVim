return {
  leader = "space",
  reload_config_on_save = true,
  colorscheme = "carbonfox",
  transparent_window = false,
  format_on_save = {
    ---@usage boolean: format on save (default: false)
    enabled = false,
    ---@usage pattern: string pattern used for the autocommand (default: '*')
    pattern = "*",
    ---@usage timeout: number timeout in ms for the format request (default: 1000)
    timeout = 1000,
    ---@usage filter: func to select clients
    -- filter = require("lvim.lsp.utils").format_filter,
  },
  keys = {},

  use_icons = true,
  icons = require "bvim.icons",

  builtin = {},

  plugins = {
    -- Use another thing for this, not this
  },

  lazy = {
    opts = {
      install = {
        missing = true,
      },
      ui = {
        border = "rounded"
      },
      git = {
        timeout = 120,
      },
      performance = {
        rtp = {
          reset = false,
          disabled_plugins = {
            "gzip",
            -- "matchit",
            -- "matchparen",
            -- "netrwPlugin"
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin"
          }
        },
      },
      defaults = {
        lazy = false,
        -- It's recommended to leave version=false for now, since a lot of plugins that support versioning
        -- have outdated releases, which may break your Neovim install.
        version = false, -- always use the latest git commit
        -- version = "*", -- try installing the latest table version for plugins that support semantic versioning
      },
      checker = { enabled = true }, -- automatically check for plugin updates
    }
  },

  autocommands = {},
  lang = {},

}
