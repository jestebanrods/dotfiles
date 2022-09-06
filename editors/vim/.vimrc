filetype off               " Reinicia la detección de tipos
filetype plugin indent on  " Activa la detección de tipos de archivos

set autoindent                       " Activa la indentación automática
set autoread                         " Detecta cambios en los archivos en tiempo real
set background=dark                  " Definie el tema en modo oscuro por defecto
set backspace=indent,eol,start       " Elimina problemas con el manejo de espacios
set clipboard=unnamedplus            " Activa la copia y pega desde el portapapeles para linux
set colorcolumn=120                  " Muestra la columna límite a 120 caracteres
set cursorline                       " Activa el identificador de toda la linea
set encoding=utf-8                   " Define la codificación de caracteres
set expandtab
set hidden                           " Permitir cambiar de buffers sin tener que guardarlos
set ignorecase                       " Ignorar mayúsculas al hacer una búsqueda
set laststatus=2                     " Mantiene la barra de estados siempre visible
set nobackup                         " Desactiva la creación de backups
set nocompatible                     " Desactiva la compatibilidad con editores antiguos
set noerrorbells                     " Desactiva la campana de notificaciones del terminal
set noshowmode
set noswapfile                       " Desactiva los archivos de recuperación
set nowrap                           " No dividir la línea si es muy larga
set number                           " Activar fila de números
set relativenumber                   " Activar números relativos a la fila
set ruler                            " Activa la barra inferior de estado
set shiftwidth=2
set showcmd                          " Muestra los comandos que se están ejecutando
set showmatch                        " Visualizar el paréntesis de cierre
set smartcase                        " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas
set spell                            " Activa la validación de gramática, por defecto está en ingles
set spellfile=~/.vim/dict.utf-8.add  " Definición de directorio de diccionario personal
set spelllang=es,en                  " Activa multiples lenguajes gramaticales
set splitbelow                       " Abrir siempre un nuevo split debajo
set splitright                       " Abrir siempre un nuevo split a la derecha
set termguicolors                    " Activa la definición de colores en modo terminal
set title                            " Activar la ruta del archivo en la pestaña de la terminal
set ttyfast
set undodir=~/.vim/undodir           " Definición del archivo de deshacer
set undofile                         " Activa el uso de archivos para el historico de deshacer
set wildmenu                         " Activa el menú de autocompletado en la ejecución de comandos

setlocal spell  " Activar la validación de lenguajes gramaticales
syntax enable   " Activar el resaltado de sintaxis

so ~/.vim/plugins.vim
so ~/.vim/maps.vim
