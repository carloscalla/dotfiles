local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.prettier,
  -- null_ls.builtins.diagnostics.eslint_d,
  -- null_ls.builtins.code_actions.eslint_d,
  null_ls.builtins.formatting.clang_format,
}

null_ls.setup({ sources = sources })
