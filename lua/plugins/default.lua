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

  {
    "laytan/tailwind-sorter.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
    build = "cd formatter && npm install && npm run build",
    config = true,
    ft = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
    opts = {
      on_save_enabled = true,
    },
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup({})
    end,
    keys = {
      {
        "<leader>hp",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon quick menu",
      },
      {
        "<leader>ha",
        function()
          require("harpoon"):list():append()
        end,
        desc = "harpoon file",
      },
    },
  },
}
