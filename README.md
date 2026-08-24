# Installation

## Requirements

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for syntax highlighting

Using vundle:

```vim
Plugin 'k-collie/moose-nvim'
```

# Setup

## filetype detection

In your `init.vim` set a global variable to enable lua filetype detection:

```vimscript
let g:do_filetype_lua = 1
```

Run:

```vim
:TSInstall moose
```

# Features

- moose hit filetype detection
- syntax highlighting
