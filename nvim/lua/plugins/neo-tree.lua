return  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = function()
        return {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                    hide_by_name = {
                        --'.git',
                        --'.DS_Store',
                        --'thumbs.db',
                        --'.mono',
                    },
                    never_show = {},
                },
            },
        }
    end,
    config = function(_, opts)
        vim.keymap.set('n', '<leader>e', ':Neotree filesystem reveal right<CR>')
        require('neo-tree').setup(opts)
    end,
}
