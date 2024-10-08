return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "templ",
        "graphql-language-service-cli",
        "powershell-editor-services",
        "zls",
        "pbls",
      })
    end,
  },
}
