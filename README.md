# NVIM

Personal Neovim config based on LazyVim.

## Prerequisites

- Neovim 0.10+
- ripgrep, fd, jq (LazyVim dependencies)
- Java 21+ (for jdtls/Lombok support)
- Ollama (optional, for local AI features)

## Install

1. Make a backup

```bash
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. Clone the repository

```bash
git clone https://github.com/CarlosMolinesPastor/nvim.git ~/.config/nvim
```

3. For Ollama (optional)

```bash
curl -fsSL https://ollama.com/install.sh | sh
ollama run qwen2.5-coder:1.5b
```

## Features

### Languages & Frameworks

- **Java/JVM** - jdtls with Lombok annotation processing
- **Spring Boot** - springboot-nvim plugin for Spring Boot development
- **TypeScript** - typescript.nvim with organize imports & rename file
- **Python** - LSP support via pyright

### AI Assistants

- **OpenCode** - Interactive AI coding assistant (Github Models)
- **Ollama** - Local LLM integration (qwen2.5-coder:1.5b)
- **Copilot** - GitHub Copilot suggestions

### Developer Tools

- **Terminal** - toggleterm embedded terminal (SPC+y)
- **Code Runner** - Run code directly from Neovim (SPC+R)
- **Live Preview** - Preview HTML files in browser (SPC+l)
- **Screenshot** - silicon for code screenshots (`:Silicon` command)

  Archlinux: `sudo pacman -S harfbuzz fontconfig libxcb freetype2 pkg-config`

  Ubuntu/Debian: `sudo apt update && sudo apt install -y build-essential libharfbuzz-dev libfontconfig1-dev pkg-config libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxcb1-dev libfreetype6-dev libxml2-dev`

  Then: `cargo install silicon`

- **Refactoring** - refactoring.nvim for extract/rename utilities
- **Dashboard** - Neovim startup screen with snacks.nvim

### Themes

Gruvbox (default) + 8 other themes available:
github-nvim-theme, sonokai, tokyonight, dracula, gruvbox, moonfly, onedark, solarized-osaka

## Keybindings

### General

| Shortcut    | Action              |
|-------------|---------------------|
| SPC+y       | Open terminal       |
| SPC+R       | Run code            |
| SPC+l       | Live preview HTML   |
| SPC+sr      | Spring Boot Run     |
| SPC+sc      | Generate Java Class |
| SPC+si      | Generate Interface  |
| SPC+se      | Generate Enum       |

### AI

| Shortcut    | Action                    |
|-------------|---------------------------|
| SPC+a+o     | Toggle OpenCode panel     |
| SPC+a+A     | Ask OpenCode (prompt)     |
| SPC+a+O     | Ollama prompt             |
| Ctrl+a      | Ask opencode (normal/visual) |
| Ctrl+x      | Execute OpenCode action   |
| Ctrl+.      | Toggle OpenCode           |
| go          | Add range to opencode     |
| goo         | Add line to opencode      |
| S-Ctrl+u    | Scroll opencode up        |
| S-Ctrl+d    | Scroll opencode down      |

### TypeScript

| Shortcut    | Action              |
|-------------|---------------------|
| SPC+co      | Organize Imports    |
| SPC+cR      | Rename File         |

### Copilot

| Shortcut    | Action              |
|-------------|---------------------|
| M-l         | Accept suggestion   |
| M-]         | Next suggestion     |
| M-[         | Previous suggestion |
| M-e         | Dismiss suggestion  |

## Screenshots

![](https://github.com/CarlosMolinesPastor/nvim/blob/main/screenshot.gif)