return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = "MunifTanjim/nui.nvim",
    opts = {},
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
}
