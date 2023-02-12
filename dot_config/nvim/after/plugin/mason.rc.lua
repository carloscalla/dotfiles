require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "clangd",
    "cssls",
    "dockerls",
    "emmet_ls",
    "eslint",
    "html",
    "jsonls",
    "lua_ls",
    "tailwindcss",
    "tsserver",
    "vimls",
    "yamlls",
  }
})
