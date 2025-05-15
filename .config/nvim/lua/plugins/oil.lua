return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  lazy = false,
  config = function()
      require("oil").setup({
          default_file_explorer = true,
          -- Id is automatically added at the beginning, and name at the end
          -- See :help oil-columns
          columns = {
              "permissions",
              "mtime",
              "size",
              "icon",
          },
          -- Send deleted files to the trash instead of permanently deleting them (:help oil-trash)
          delete_to_trash = false,
          -- Set to false to disable all of the above keymaps
          use_default_keymaps = true,
          view_options = {
              -- Show files and directories that start with "."
              show_hidden = true,
              -- This function defines what is considered a "hidden" file
              is_hidden_file = function(name, bufnr)
                  local m = name:match("^%.")
                  return m ~= nil
              end,
              -- This function defines what will never be shown, even when `show_hidden` is set
              is_always_hidden = function(name, bufnr)
                  return false
              end,
              -- Sort file and directory names case insensitive
              case_insensitive = false,
              sort = {
                  -- sort order can be "asc" or "desc"
                  -- see :help oil-columns to see which columns are sortable
                  { "type", "asc" },
                  { "name", "asc" },
              },
          },
      })
  end
}
