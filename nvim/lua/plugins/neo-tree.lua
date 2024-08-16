return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    opts = {
      filesystem = {
        filtered_items = {
          -- visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
         hide_by_name = {
          -- '.git',
          '.DS_Store',
          'thumbs.db',
          '.mono',
          },
          never_show = {},
        },
      }
    },
    keys = {
      {
        "<leader>fe",
        function()
          require("neo-tree.command").execute({ position = "right", toggle = true, dir = LazyVim.root() })
        end,
        desc = "Explorer NeoTree (Root Dir)",
      },
      {
        "<leader>fE",
        function()
          require("neo-tree.command").execute({ position = "right", toggle = true, dir = vim.uv.cwd() })
        end,
        desc = "Explorer NeoTree (cwd)",
      },
      { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
      { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({ position = "right", source = "git_status", toggle = true })
        end,
        desc = "Git Explorer",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({ position = "right", source = "buffers", toggle = true })
        end,
        desc = "Buffer Explorer",
      },
    },
  },
}
