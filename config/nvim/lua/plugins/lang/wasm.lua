return {
  -- WebAssembly support is mainly provided through nvim-treesitter.
  -- We already ensured "wasm" and "wgsl" aren't explicitly required but TS handles them if added.
  -- We'll just ensure it's available.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "wgsl" }) -- there isn't a direct wasm parser, usually it's handled via rust/c compilation, but wgsl is related for web.
      end
    end,
  }
}
