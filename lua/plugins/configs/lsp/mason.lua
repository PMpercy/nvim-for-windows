local status_ok, mason = pcall(require, "mason")
if not status_ok then
  return
end

local status_ok_1, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_1 then
  return
end

local servers = {
  "cssls",
  "cssmodules_ls",
  "emmet_ls",
  "html",
  "jsonls",
  "tsserver",
  "sumneko_lua",
}

mason.setup(settings)
mason_lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true,
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
    return
end


local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("plugins.configs.lsp.handlers").on_attach,
    capabilities = require("plugins.configs.lsp.handlers").capabilities,
  }
  server = vim.split(server, "@")[1]


  if server == "sumneko_lua" then
    local lua_opts = require("plugins.configs.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", lua_opts, opts)

    -- local l_status_ok, lua_dev = pcall(require, "lua-dev")
    -- if not l_status_ok then
      -- return
    -- end
    -- local sumneko_opts = require "user.lsp.settings.sumneko_lua"
    -- opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
    -- opts = vim.tbl_deep_extend("force", require("lua-dev").setup(), opts)
    -- local luadev = lua_dev.setup {
      --   -- add any options here, or leave empty to use the default settings
      -- lspconfig = opts,
      -- lspconfig = {
        -- on_attach = opts.on_attach,
        -- capabilities = opts.capabilities,
        --   -- settings = opts.settings,
      -- },
    -- }
    -- lspconfig.sumneko_lua.setup(luadev)
    -- goto continue
  end


  if server == "tsserver" then
    local tsserver_opts = require "plugins.configs.lsp.settings.tsserver"
    opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
  end


  lspconfig[server].setup(opts)
  ::continue::
end