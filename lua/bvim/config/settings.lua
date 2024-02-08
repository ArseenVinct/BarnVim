local M = {}

M.load_default_options = function()
  local default_options = {
    backup = false,                          -- creates a backup file
    clipboard = "unnamedplus",               -- sync with system clipboard
    cmdheight = 1,                           -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    confirm = true,                          -- confirm to save changes before exiting modified buffer
    cursorline = true,                       -- enable highlighting of the current line
    expandtab = true,                        -- user spaces instead of tabs
    fileencoding = "utf-8",                  -- the encoding for writting the file
    foldmethod = "manual",                   -- folding, set to "expr" for treesitter based folding
    foldexpr = "",                           -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    guifont = "monospace:h17",               -- the font used in graphical neovim applications
    hidden = true,                           -- required to keep multiple buffers and open multiple buffers
    hlsearch = true,                         -- highlight all matches on previous search pattern
    ignorecase = true,                       -- ignore case in search patterns
    laststatus = 3,
    list = true,                             -- Show some invisible characters (tabs...)
    mouse = "a",                             -- allow the mouse to be used in neovim
    number = true,                           -- set numbered lines
    numberwidth = 4,                         -- set number column width to 2 {default 4}
    pumheight = 10,                          -- pop up menu height
    ruler = false,
    scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor.
    sidescrolloff = 8,                       -- minimal number of screen lines to keep left and right of the cursor.
    shiftwidth = 2,                          -- the number of spaces inserted for each indentation
    showcmd = false,
    showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
    smartcase = true,                        -- smart case
    smartindent = true,                      -- Insert indents automatically
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = false,                        -- creates a swapfile
    tabstop = 2,                             -- insert 2 spaces for a tab
    termguicolors = true,                    -- set term gui colors (most terminals support this)
    timeoutlen = 1000,                       -- time to wait for a mapped sequence to complete (in milliseconds)
    title = true,                            -- set the title of window to the value of the titlestring
    -- titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
    undofile = true,                         -- enable persistent undo
    undolevels = 10000,
    updatetime = 100,                        -- faster completion
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    wrap = true,                             -- wrap lines when at end of window
    linebreak = true,                        -- companion to warp, don't split words
  }

  ---  SETTINGS  ---
  vim.opt.spelllang:append "cjk" -- disable spellchecking for asian characters (VIM algorithm does not support it)
  vim.opt.shortmess:append "c"   -- don't show redundant messages from ins-completion-menu
  vim.opt.shortmess:append "I"   -- don't show the default intro message
  vim.opt.whichwrap:append "<,>,[,],h,l"

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end

  local default_diagnostic_config = {
    signs = {
      active = true,
      values = {
        { name = "DiagnosticSignError", text = bvim.icons.diagnostics.Error },
        { name = "DiagnosticSignWarn",  text = bvim.icons.diagnostics.Warning },
        { name = "DiagnosticSignHint",  text = bvim.icons.diagnostics.Hint },
        { name = "DiagnosticSignInfo",  text = bvim.icons.diagnostics.Information },
      },
    },
    virtual_text = true,
    update_in_insert = false,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = "minimal",
      border = "rounded",
      source = "always",
      header = "",
      prefix = "",
    },
  }

  vim.diagnostic.config(default_diagnostic_config)
end

M.load_defaults = function()
  M.load_default_options()
end

return M
