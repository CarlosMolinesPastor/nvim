# NVIM

### Personal nvim config based in lazyvim

To install:

1. Make a backup

```bash
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

2. For ollama config.

```bash
curl -fsSL https://ollama.com/install.sh | sh
ollama run qwen2.5-coder:1.5b
```

2. Clone the repository

```bash
git clone https://github.com/CarlosMolinesPastor/nvim.git ~/.config/nvim
```

The possibilities:

1. Screenshot the code with silicon plugin. For this you have to install `silicon` in your system. (cargo install silicon)
   Archlinux: ``sudo pacman -S harfbuzz fontconfig libxcb freetype2 pkg-config``
   Ubuntu/Debian: ``sudo apt update && sudo apt install -y build-essential libharfbuzz-dev libfontconfig1-dev pkg-config libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxcb1-dev libfreetype6-dev libxml2-dev``
   Finally: ``cargo install silicon``
3. A second terminal incorporated in the nvim window with `toggleterm` plugin. (spacebar + y)
4. Run code with code_runner plugin. (spacebar + R)
5. Livepreview plugin to preview html files. (spacebar + l)
6. For ollama plugin, you can use it to generate code or text. (spacebar + a)

![](https://github.com/CarlosMolinesPastor/nvim/blob/main/screenshot.gif)
