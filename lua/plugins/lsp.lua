return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      graphql = {},
    },

    capabilities = {
      workspace = {
        didChangeWatchedFiles = {
          dynamicRegistration = true,
        },
      },
    },
  },
}
