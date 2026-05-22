# NVIM

Personal Neovim config based on LazyVim.

## Prerequisites

- Neovim 0.10+
- ripgrep, fd, jq (LazyVim dependencies)
- Java (for jdtls/Lombok support)
- Ollama (optional, for AI features)

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

- **Java/JVM** - jdtls with Lombok annotation processing
- **Spring Boot** - springboot-nvim plugin for Spring Boot development
- **AI** - Ollama integration for code/text generation (SPC+a)
- **Screenshot** - silicon for code screenshots (install via `cargo install silicon`)

  Archlinux: `sudo pacman -S harfbuzz fontconfig libxcb freetype2 pkg-config`

  Ubuntu/Debian: `sudo apt update && sudo apt install -y build-essential libharfbuzz-dev libfontconfig1-dev pkg-config libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxcb1-dev libfreetype6-dev libxml2-dev`

- **Terminal** - toggleterm (SPC+y)
- **Run Code** - code_runner (SPC+R)
- **Live Preview** - livepreview for HTML files (SPC+l)

## Keybindings

| Shortcut    | Action              |
|-------------|---------------------|
| SPC+y       | Open terminal       |
| SPC+R       | Run code            |
| SPC+l       | Live preview HTML   |
| SPC+a       | Ollama AI prompt    |
| SPC+sr      | Spring Boot Run     |
| SPC+sc      | Generate Java Class |
| SPC+si      | Generate Interface  |
| SPC+se      | Generate Enum       |

![](https://github.com/CarlosMolinesPastor/nvim/blob/main/screenshot.gif)