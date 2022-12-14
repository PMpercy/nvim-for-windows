local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

-- https://github.com/prettier-solidity/prettier-plugin-solidity
-- npm install --save-dev prettier prettier-plugin-solidity
-- you don't have to use these helpers and could do it yourself, too


null_ls.setup {
  debug = true,
  sources = {
    formatting.prettier.with {
      extra_filetypes = { "toml", "solidity", "lua" },
      filetypes = { "html", "json", "yaml", "markdown", "lua" },
      extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--tab-width" },
    },
    formatting.black.with { extra_args = { "--fast" } },
    formatting.stylua,
    formatting.shfmt,
    diagnostics.eslint,
    diagnostics.flake8,
    diagnostics.shellcheck,
    completion.spell,
  },
}
