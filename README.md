# NVIM

### Personal nvim config based in lazyvim for java sptingboot develop

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

# 🚀 Spring Boot Development - Neovim/LazyVim

## 📋 Keymaps 

### LSP (Language server)
| Atajo | Function | Description |
|-------|---------|-------------|
| `gd` | Go to Definition | Navega a la definición de clases, métodos o beans |
| `gr` | Find References | Encuentra dónde se usa un bean, repositorio o controlador |
| `gI` | Go to Implementation | De una interfaz a su implementación concreta |
| `K` | Hover | Muestra documentación y tipos (sobre métodos de Spring) |
| `<leader>ca` | Code Action | Acciones rápidas: generar getters/setters, imports, etc. |
| `<leader>cr` | Rename | Renombra clases, métodos o variables en todo el proyecto |
| `<leader>cR` | Rename File | Renombra archivos manteniendo las referencias |
| `<leader>cl` | LSP Info | Muestra información del servidor de lenguaje activo |
| `gK` | Signature Help | Muestra la firma de métodos |

### Search
| Atajo | Function | Description |
|-------|---------|-------------|
| `<leader>ff` | Find Files | Busca archivos en el proyecto |
| `<leader>fg` | Live Grep | Busca texto en todo el proyecto |
| `<leader>fr` | Recent Files | Archivos recientes |
| `<leader>fb` | Buffers | Lista de buffers abiertos |
| `<leader>fp` | Projects | Proyectos recientes |

### Console
| Atajo | Function | Description |
|-------|---------|-------------|
| `<leader>ft` | Toggle Terminal | Abre/cierra terminal flotante (ideal para Spring Boot) |
| `<leader>fh` | Horizontal Split | Terminal dividida horizontal |
| `<leader>fv` | Vertical Split | Terminal dividida vertical |
| `<leader>fq` | Close Terminal | Cierra la terminal actual |

## 🏃‍♂️ Run Commands for spring boot

###  Normal (Background)
```bash
# Usando Maven
mvn spring-boot:run

# Usando Gradle
./gradlew bootRun

# Debug mode
mvn spring-boot:run -Dspring-boot.run.jvmArguments="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5005"

./gradlew bootRun --debug-jvm
```
```xml
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-devtools</artifactId>
    <scope>runtime</scope>
    <optional>true</optional>
</dependency>
```
