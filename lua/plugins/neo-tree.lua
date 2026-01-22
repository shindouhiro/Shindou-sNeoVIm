return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      root_change = "global",
      hijack_netrw_behavior = "open_current",
      group_empty_dirs = false,
      use_libuv_file_watcher = true,
      window = {
        mappings = {
          ["<C-x>"] = "split_with_window_picker",
          ["<C-v>"] = "open_vsplit",
        },
      },
    },
    event_handlers = {
      {
        event = "file_opened",
        handler = function()
          require("neo-tree").close_all()
        end,
      },
    },
  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}

