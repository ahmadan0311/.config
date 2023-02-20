local options = {
  number = true,
  relativenumber = true,
  tabstop = 2,
  softtabstop = 4,
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  expandtab = true,                        -- convert tabs to spaces
  smartindent = true,                      -- make indenting smarter again
  wrap = false,                            -- display lines as one long line
  swapfile = false,                        -- creates a swapfile
  backup = false,
  undofile = true,                         -- enable persistent undo
  hlsearch = true,                         -- highlight all matches on previous search pattern
  termguicolors = true,
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  updatetime = 300,                        -- faster completion (4000ms default)

  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  cursorline = true,                       -- highlight the current line
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
}

for k, v in pairs(options) do -- vim.opt[k] == vim.opt.k
  vim.opt[k] = v
end

