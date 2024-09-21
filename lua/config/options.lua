-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- -----------------------------------------------------------
-- Neovim settings
-----------------------------------------------------------

-----------------------------------------------------------
-- Neovim API aliases
-----------------------------------------------------------
local g = vim.g -- Variables globales
local opt = vim.opt -- Opciones globales/buffer/ventana
local o = vim.o

-- Cambia el líder de los atajos de teclado a un espacio
g.mapleader = " "

-- Transparencia del menú emergente de completado automático (0-100)
opt.pumblend = 0
-- Transparencia de las ventanas flotantes (0-100)
opt.winblend = 0
-- Habilita el soporte del mouse en modo normal
opt.mouse = "a"
-- Copia y pega en el portapapeles del sistema operativo
opt.clipboard = "unnamedplus"
-- Desactiva la creación de archivos de intercambio
opt.swapfile = false
-- Muestra el número de línea
opt.number = true
-- Desactiva los números de línea relativa
opt.relativenumber = false
-- Resalta el paréntesis coincidente
opt.showmatch = true
-- Habilita el plegado de código usando marcadores
opt.foldmethod = "marker"
-- Coloca un marcador en la columna 80 para indicar la longitud máxima de línea
opt.colorcolumn = "80"
-- Divide verticalmente las ventanas a la derecha
opt.splitright = true
-- Divide horizontalmente las ventanas en la parte inferior
opt.splitbelow = true
-- Ignora la diferencia entre mayúsculas y minúsculas en las búsquedas
opt.smartcase = true
-- Divide las líneas en los espacios de palabra
opt.linebreak = true
-- Desactiva el nivel de ocultación de caracteres
opt.conceallevel = 1
-- Habilita la edición de archivos
opt.modifiable = true
-- Codificación UTF-8 para entrada/salida de archivos
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
-- Muestra el título de la ventana en la barra de título
opt.title = false
-- Ajusta la indentación automáticamente
opt.autoindent = true
-- Resalta la búsqueda mientras escribe
opt.hlsearch = true
-- Oculta los archivos de respaldo
opt.backup = false
-- Muestra los comandos en la barra de estado
opt.showcmd = true
-- Altura mínima de la línea de comandos
opt.cmdheight = 1
-- Muestra la línea de estado incluso con una sola ventana abierta
opt.laststatus = 2
-- Desplazamiento mínimo al final y al inicio de la ventana
opt.scrolloff = 10
-- Omite los archivos temporales del control de cambios
opt.backupskip = { "/tmp/*", "/private/tmp/*" }
-- Muestra el resultado de los comandos mientras escribes
opt.inccommand = "split"
-- Ignora la diferencia entre mayúsculas y minúsculas en las búsquedas
opt.ignorecase = true
-- Utiliza la tecla Tab inteligentemente
opt.smarttab = false
-- Indenta los comentarios al dividir líneas
opt.breakindent = true
-- Desactiva el ajuste de líneas automáticas
opt.wrap = false
-- Define cómo se comporta la tecla Retroceso
opt.backspace = { "start", "eol", "indent" }
-- Busca en subcarpetas al buscar archivos
opt.path:append({ "**" })
-- Ignora las carpetas de node_modules al buscar archivos
opt.wildignore:append({ "*/node_modules/*" })
-- Permite la escritura de archivos de deshacer
opt.undofile = true
-- Habilita los buffers de fondo
opt.hidden = true
-- Desactiva el redibujado diferido para un desplazamiento más rápido
opt.lazyredraw = false
-- Establece el número máximo de columnas para el resaltado de sintaxis
opt.synmaxcol = 1000
-- Utiliza espacios en lugar de tabulaciones
opt.expandtab = false
-- Establece la cantidad de espacios para una tabulación
opt.shiftwidth = 4
-- Establece el ancho de una tabulación
opt.tabstop = 4
-- Indentación inteligente automática
opt.smartindent = true
-- Activa los colores de terminal verdadero
o.termguicolors = true
-- Desactiva la visualización de caracteres especiales
opt.list = false
-- Agrega caracteres de visualización adicionales
opt.listchars:append("space:?")
opt.listchars:append("eol:?")
