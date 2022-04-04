-- require("carlos.nvim-web-devicons")
require("carlos.treesitter")
require("carlos.telescope")
require("carlos.cmp")
require("carlos.lsp")

require('nvim-autopairs').setup{}

require('lualine').setup()

require("toggleterm").setup{
  open_mapping = [[<c-\>]],
  direction = 'float',
}

require('lspsaga').setup{}
