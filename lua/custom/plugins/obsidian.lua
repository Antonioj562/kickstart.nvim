return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = 'markdown',
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
    "BufReadPre ~Ob-PARA/*.md",
    "BufNewFile ~Ob-PARA/*.md",
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'Projects',
        path = '~/Ob-PARA/Projects',
      },
      {
        name = 'Area',
        path = '~/Ob-PARA/Area',
      },
      {
        name = 'Area',
        path = '~/Ob-PARA/Resources',
      },
      {
        name = 'Area',
        path = '~/Ob-PARA/Archive',
      },
    },
  },
}
