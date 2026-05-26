# Freya Neovim Configuration

A clean, modular, and modern Neovim configuration tailored for developers. It is built around `lazy.nvim` and focuses on performance, aesthetics, and rich language support.

## Features

- **Package Manager**: `lazy.nvim` for fast, declarative plugin management.
- **LSP & Formatting**: Native Neovim LSP with `mason.nvim` for easy installation of language servers, and `conform.nvim` for formatting.
- **Autocomplete**: `nvim-cmp` coupled with `LuaSnip` for snippet expansion.
- **Syntax Highlighting**: `nvim-treesitter` (locked to the stable `master` branch).
- **File Management**: `nvim-tree` for a sidebar file explorer, and `telescope.nvim` for fuzzy finding.
- **Aesthetics**: `catppuccin` (default) and `rose-pine` colorschemes. `lualine.nvim` for the status line, and `mini.animate` for smooth cursor animations.
- **Git Integration**: `gitsigns.nvim` for live git diffs in the sign column.

## Installation

You can test this configuration without affecting your existing Neovim setup by using the `NVIM_APPNAME` environment variable:

```bash
# 1. Clone or symlink this directory
ln -s ~/freya-conf ~/.config/freya-nvim

# 2. Run Neovim using the custom app name
NVIM_APPNAME=freya-nvim nvim
```

To make it your default Neovim configuration, move or symlink the `config/nvim` folder to `~/.config/nvim`.

## Dependencies

Ensure you have the following system dependencies installed for the best experience:

- **Neovim** (>= 0.11.0 recommended)
- **Git** (for lazy.nvim to clone plugins)
- **A C Compiler** (e.g., `gcc` or `clang` for Treesitter parsers)
- **Ripgrep** (`rg` for Telescope live grepping)
- **Nerd Fonts** (for icons in `nvim-tree` and `lualine`)
- **Node.js, Python, Go** (optional, but required by certain Mason LSP servers and formatters)

## Major Keymaps

The leader key is set to `<Space>`.

| Keymap | Description |
|---|---|
| `<leader>e` | Toggle File Explorer (NvimTree) |
| `<leader>ff` | Telescope Find Files |
| `<leader>fg` | Telescope Live Grep |
| `<leader>fb` | Telescope Find Buffers |
| `<leader>fm` | Format current file (Conform) |
| `<leader>nh` | Clear search highlights |
| `<leader>sv` / `<leader>sh` | Split window vertically / horizontally |
| `<leader>sx` | Close current split |

## Structure

The configuration is modularly split to keep files small and easy to read:

- `init.lua`: Main entry point. Loads configuration in order.
- `lua/config/`: Contains core Neovim options (`options.lua`), global keybindings (`keymaps.lua`), and the lazy.nvim bootstrapper (`lazy.lua`).
- `lua/plugins/`: Plugins grouped by their primary function (e.g., `appearance.lua`, `coding.lua`, `editor.lua`).
- `lua/plugins/lang/`: Language-specific plugin configurations (Go, Python, Markdown, C/C++, etc.).
