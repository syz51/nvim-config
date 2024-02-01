return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = "MunifTanjim/nui.nvim",
    opts = {
      colors = {
        up_to_date = "#a3be8c",
        outdated = "#bf616a",
      },
    },
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
