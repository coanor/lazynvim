return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- This tells LazyVim NOT to enable inlay hints when an LSP attaches
      inlay_hints = { enabled = false },
    },
  },
}
