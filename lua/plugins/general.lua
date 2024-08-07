return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = "MunifTanjim/nui.nvim",
    keys = {
      {
        "<leader>ns",
        function()
          require("package-info").show({ force = true })
        end,
        desc = "Force Refresh Package Info",
      },
    },
    opts = {
      colors = {
        up_to_date = "#98c379", -- Text color for up to date dependency virtual text
        outdated = "#d19a66", -- Text color for outdated dependency virtual text
      },
    },
    config = function(_, opts)
      require("package-info").setup(opts)

      -- manually register them
      vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. opts.colors.up_to_date)
      vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. opts.colors.outdated)
    end,
  },

  {
    "nvim-pack/nvim-spectre",
    keys = {
      {
        "<leader>sf",
        function()
          require("spectre").open_file_search()
        end,
        desc = "Find In Current File",
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        use_libuv_file_watcher = false,
      },
    },
  },
}
