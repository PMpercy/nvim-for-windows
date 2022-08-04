local status_ok, nvimtree = pcall(require, 'nvim-tree')
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local icons = require('core.ui.icons')

local tree_cb = nvim_tree_config.nvim_tree_callback

-- OR setup with some options
nvimtree.setup({
  view = {
    adaptive_size = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },

  diagnostics = {
    enable = true,
    icons = {
      hint = icons.diagnostics.Hint,
      info = icons.diagnostics.Information,
      warning = icons.diagnostics.Warning,
      error = icons.diagnostics.Error
    }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,

  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
    indent_markers = {
      enable = true
    },
    icons = {
      webdev_colors = true,
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
      glyphs = {
        default = icons.documents.default,
        symlink = icons.documents.symlink,
        folder = {
          arrow_open = icons.ui.ArrowOpen,
          arrow_closed = icons.ui.ArrowClosed,
          default = icons.folders.Folder,
          open = icons.folders.OpenFolder,
          empty = icons.folders.empty,
          empty_open = icons.folders.empty_open,
          symlink = icons.folders.symlink_folder,
          symlink_open = icons.folders.symlink_folder,
        },
        git = {
          unstaged = icons.git_explorer.unstaged,
          staged = icons.git_explorer.staged,
          unmerged = icons.git_explorer.unmerged,
          renamed = icons.git_explorer.renamed,
          untracked = icons.git_explorer.untracked,
          deleted = icons.git_explorer.deleted,
          ignored = icons.git_explorer.ignored,
        }
      }
    }
  },
  filters = {
    dotfiles = true,
  },
})
