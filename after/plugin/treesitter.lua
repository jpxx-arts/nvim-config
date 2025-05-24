require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "html", "bash", "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,


    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Salta para o próximo objeto automaticamente

      keymaps = {
        ["i<"] = "@tag.inner", -- dentro da tag
        ["a<"] = "@tag.outer", -- toda a tag
        ["ic"] = "@tag_content", -- "inner content"
      },
    },
  },

  matchup = {
    enable = true,
  },
}
