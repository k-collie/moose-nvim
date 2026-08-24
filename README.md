# moose-nvim

Adds the following for [MOOSE](https://github.com/idaholab/moose) HIT input files:

- filetype detection
- syntax highlighting
- LSP detection and support

# Setup

## Requirements

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'k-collie/moose-nvim'
```

## tree-sitter

To install tree-sitter add to your config:

```lua
vim.api.nvim_create_autocmd('User', { pattern = 'TSUpdate',
callback = function()
  local parser_config = require "nvim-treesitter.parsers"
  -- Set the treesitter parser for moose filetype
  parser_config.hit = {
    install_info = {
      url = "https://github.com/dschwen/tree-sitter-hit",
      files = {"src/parser.c"},
      branch = "master",
      generate_requires_npm = false,
      requires_generate_from_grammar = false,
    },
  }
end})

```

Run:

```vim
:TSInstall moose
```

# Features

- moose hit filetype detection
- syntax highlighting
