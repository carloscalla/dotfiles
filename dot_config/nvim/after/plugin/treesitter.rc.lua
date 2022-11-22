require 'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ensure_installed = {
  --   "bash",
  --   "c",
  --   "cpp",
  --   "css",
  --   "graphql",
  --   "html",
  --   "java",
  --   "javascript",
  --   "json",
  --   "lua",
  --   "prisma",
  --   "python",
  --   "scss",
  --   "tsx",
  --   "typescript",
  --   "vim",
  --   "yaml",
  -- },
  ensure_installed = "all",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  -- ignore_install = { 'phpdoc' },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,

  },

  -- indent = {
  --   enable = true,
  --   disable = {},
  -- },

  -- nvim-ts-autotag
  autotag = {
    enable = true,
  },

  -- nvim-ts-context-commentstring
  context_commentstring = {
    enable = true
  }
}


require 'treesitter-context'.setup {
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
    -- For all filetypes
    -- Note that setting an entry here replaces all other patterns for this entry.
    -- By setting the 'default' entry below, you can control which nodes you want to
    -- appear in the context window.
    default = {
      'class',
      'function',
      'method',
      'for',
      'while',
      'if',
      'switch',
      'case',
    },
    -- Example for a specific filetype.
    -- If a pattern is missing, *open a PR* so everyone can benefit.
    --   rust = {
    --       'impl_item',
    --   },
  },
  exact_patterns = {
    -- Example for a specific filetype with Lua patterns
    -- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
    -- exactly match "impl_item" only)
    -- rust = true,
  },

  -- [!] The options below are exposed but shouldn't require your attention,
  --     you can safely ignore them.

  zindex = 20, -- The Z-index of the context window
  mode = 'cursor', -- Line used to calculate context. Choices: 'cursor', 'topline'
  separator = nil, -- Separator between context and content. Should be a single character string, like '-'.
}
