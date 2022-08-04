local M = {}
require('core.ui.icons.devicons')


M.kind = {
  Text = "",
  Method = "",
  Function = "",
  Field = "",
  Class = "ﴯ",
  Interface = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
  Constant = " ",
  Constructor = " ",
  Module = " ",
  Property = " ",
  Variable = " ",
}

M.ui = {
  ArrowClosed = "",
  ArrowOpen = "",
  Lock = "",
  Circle = "",
  BigCircle = "",
  BigUnfilledCircle = "",
  Close = "",
  NewFile = "",
  Search = "",
  Lightbulb = "",
  Project = "",
  Dashboard = "",
  History = "",
  Comment = "",
  Bug = "",
  Code = "",
  Telescope = "",
  Gear = "",
  Package = "",
  List = "",
  SignIn = "",
  SignOut = "",
  Check = "",
  Fire = "",
  Note = "",
  BookMark = "",
  Pencil = "",
  -- ChevronRight = "",
  ChevronRight = ">",
  Table = "",
  Calendar = "",
  CloudDownload = "",
}


M.diagnostics = {
  Error = "",
  Warning = "",
  Information = "",
  Question = "",
  Hint = "",
}
M.misc = {
  Robot = "ﮧ",
  Squirrel = "",
  Tag = "",
  Watch = "",
  Smiley = "ﲃ",
  Package = "",
  CircuitBoard = "",
}

M.git = {
  Add = "",
  Mod = "",
  Remove = "",
  Ignore = "",
  Rename = "",
  Diff = "",
  Repo = "",
  Octoface = "",
}
M.git_explorer = {
  unstaged = "✗",
  staged = "✓",
  unmerged = "",
  renamed = "➜",
  untracked = "U",
  deleted = "",
  ignored = "◌",
}
M.folders = {
  Files = "",
  Folder = "",
  OpenFolder = "",
  empty = '',
  empty_open = '',
  symlink_folder = "",
}
M.documents = {
  default = '',
  symlink = "",
  File = "",
}
return M
