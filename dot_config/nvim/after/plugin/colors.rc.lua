vim.g.carlos_colorscheme = "gruvbox"

function ColorMyPencils()
  vim.g.gruvbox_contrast_dark = 'hard'
  vim.g.gruvbox_italic = '1'
  vim.g.gruvbox_bold = '1'
  vim.g.gruvbox_invert_selection = '0'
  vim.opt.background = "dark"

  -- vim.g.tokyonight_transparent_sidebar = true
  -- vim.g.tokyonight_transparent = true

  vim.cmd("colorscheme " .. vim.g.carlos_colorscheme)

  local hl = function(thing, opts)
    vim.api.nvim_set_hl(0, thing, opts)
  end

  -- hl("SignColumn", {
  --     bg = "none",
  -- })

  -- hl("ColorColumn", {
  --     ctermbg = 0,
  --     bg = "#555555",
  -- })

  -- hl("CursorLineNR", {
  --   bg = "None"
  -- })

  hl('Cursor', {
    bg = 'SeaGreen',
  })

  hl("Normal", {
    bg = "none"
  })

  -- hl("LineNr", {
  --     fg = "#5eacd3"
  -- })

  -- hl("netrwDir", {
  --     fg = "#5eacd3"
  -- })

end

-- ColorMyPencils()


require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value `:help attr-list`
    comments = "italic",
    keywords = "NONE",
    functions = "NONE",
    variables = "NONE",
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- fucntion will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- fucntion will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(hl, colors)
    hl.Cursor = {
      fg = 'White',
      bg = 'DarkCyan'
    }
    -- hl.SignColumn = {
    --   bg= 'Gray'
    -- }
    hl.WinSeparator = {
      fg="Gray",
    }
  end,
})

-- Lua
vim.cmd [[colorscheme tokyonight]]
