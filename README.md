# Nvim-Lua

## Configuración Personal de Neovim

Esta es mi configuración personalizada de Neovim, basada en la distribución de [LazyVim](https://github.com/LazyVim/LazyVim), optimizada para mejorar mi flujo de trabajo en edición y programación.

### Instalación de Neovim en macOS

1. **Instalar Homebrew** (si no lo tienes ya instalado):

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

   Para más información, revisa la documentación oficial en [brew.sh](https://brew.sh/).

2. **Instalar Neovim** usando Homebrew:

   ```sh
   brew install neovim
   ```

3. **Clonar mi configuración de LazyVim** (ya basada en LazyVim):

   ```sh
   git clone https://github.com/Juliuzzk/nvim-lua.git ~/.config/nvim
   ```

### KeyMaps y Configuraciones por Plugins Adicionales

#### Obsidian

- **Configuración**: Este plugin se integra con Neovim para permitir la edición directa de notas almacenadas en Obsidian.

  - Asegúrate de tener configurada la ruta de tu vault de Obsidian en las opciones del plugin.

- **KeyMaps**:

  - `<Leader>no`: Abrir Obsidian

  - `<Leader>nn`: Abrir una nueva nota en Obsidian.

Estas son algunas de las configuraciones y keymaps personalizados que utilizo para mejorar la eficiencia en el uso de Neovim junto con diversos plugins.
