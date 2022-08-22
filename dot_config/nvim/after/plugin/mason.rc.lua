require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
      "bashls",
      "cssls",
      "dockerls",
      "emmet_ls",
      "eslint",
      "html",
      "jsonls",
      "sumneko_lua",
      "tailwindcss",
      "tsserver",
      "vimls",
      "yamlls"
    }
})
