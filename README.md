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

## Filetype detection

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
