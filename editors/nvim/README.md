# NeoVim Configuration

## Keymaps

### NvimTree

| VI Mode |         Keymap         | Description                                                   |
| :-----: | :--------------------: | ------------------------------------------------------------- |
| Normal  | `<leader>` + `t` + `t` | Hacer toogle de la barra.                                     |
| Normal  | `<leader>` + `t` + `c` | Colapsar todas las carpetas.                                  |
| Normal  | `<leader>` + `t` + `b` | Colapsar todas las carpetas manteniendo los buffers abiertos. |

### WhickKey

| VI Mode |         Keymap         | Description                                         |
| :-----: | :--------------------: | --------------------------------------------------- |
| Normal  | `<leader>` + `w` + `k` | Mostar los atajos de teclado de manera interactiva. |

### Nightfox

| VI Mode |         Keymap         | Description                           |
| :-----: | :--------------------: | ------------------------------------- |
| Normal  | `<leader>` + `c` + `c` | Hacer toogle del tema oscuro y claro. |

### Buffers

| VI Mode |         Keymap         | Description                        |
| :-----: | :--------------------: | ---------------------------------- |
| Normal  | `<leader>` + `b` + `a` | Alternar al último buffer abierto. |
| Normal  | `<leader>` + `b` + `n` | Ir al siguiente buffer.            |
| Normal  | `<leader>` + `b` + `p` | Ir al anterior buffer.             |
| Normal  | `<leader>` + `b` + `d` | Cerrar buffer.                     |

### Windows

| VI Mode |    Keymap     | Description                                  |
| :-----: | :-----------: | -------------------------------------------- |
| Normal  | `<Alt>` + `h` | Mover cursor a la ventana de la izquierda.   |
| Normal  | `<Alt>` + `j` | Mover cursor a la ventana de abajo.          |
| Normal  | `<Alt>` + `k` | Mover cursor a la ventana de arriba.         |
| Normal  | `<Alt>` + `l` | Mover cursor a la ventana de la derecha.     |
| Normal  | `<Alt>` + `9` | Redimensionar la ventana hacia la derecha.   |
| Normal  | `<Alt>` + `0` | Redimensionar la ventana hacia la izquierda. |

### Splits

| VI Mode |    Keymap     | Description             |
| :-----: | :-----------: | ----------------------- |
| Normal  | `<Alt>` + `\` | Crear split vertical.   |
| Normal  | `<Alt>` + `-` | Crear split horizontal. |

### Tabs

| VI Mode |        Keymap         | Description                     |
| :-----: | :-------------------: | ------------------------------- |
| Normal  | `<leader>` + `t` +`n` | Crear nueva pestaña.            |
| Normal  |     `<Alt>` + `;`     | Moverse a la siguiente pestaña. |

### Floaterm

|     VI Mode      |      Keymap       | Description                          |
| :--------------: | :---------------: | ------------------------------------ |
| Normal, Terminal | `` ` `` + `` ` `` | Hacer toogle a la terminal.          |
| Normal, Terminal | `` ` `` + `` c `` | Crear una nueva terminal.            |
| Normal, Terminal | `` ` `` + `` n `` | Ir a la siguiente terminal.          |
| Normal, Terminal | `` ` `` + `` p `` | Ir a la anterior terminal.           |
| Normal, Terminal | `` ` `` + `` x `` | Cerrar la sesión de terminal actual. |

### Comments

| VI Mode | Keymap | Description                                                     |
| :-----: | :----: | --------------------------------------------------------------- |
| Normal  | `gcc`  | Comentar/Descomentar linea.                                     |
| Visual  |  `gc`  | Comentar/Descomentar elementos seleccionados.                   |
| Normal  | `gcap` | Comentar/Descomentar un conjunto de lineas agrupadas (parrafo). |

### Marks

| VI Mode | Keymap  | Description                                    |
| :-----: | :-----: | ---------------------------------------------- |
| Normal  | `m{@}`  | Añade una marca para el caracter seleccionado. |
| Normal  | `'{@}`  | Ir a la marca seleccionada.                    |
| Normal  | `dm{@}` | Borrar marca para el caracter seleccionado.    |
| Normal  |  `dm-`  | Borrar marca de la linea actual.               |
| Normal  |  `dam`  | Borrar todas las marcas.                       |

### Lua

| VI Mode |            Keymap            | Description                                       |
| :-----: | :--------------------------: | ------------------------------------------------- |
| Normal  | `<leader>` + `r` + `l` + `f` | Recargar un archivo tipo lua en la configuración. |

### Move

| VI Mode |    Keymap     | Description                                      |
| :-----: | :-----------: | ------------------------------------------------ |
| Visual  | `<Alt>` + `h` | Mover el código seleccionado hacia la derecha.   |
| Visual  | `<Alt>` + `j` | Mover el código seleccionado hacia abajo.        |
| Visual  | `<Alt>` + `k` | Mover el código seleccionado hacia arriba.       |
| Visual  | `<Alt>` + `l` | Mover el código seleccionado hacia la izquierda. |

### Selection

| VI Mode |     Keymap      | Description                            |
| :-----: | :-------------: | -------------------------------------- |
| Normal  | `g` + `n` + `n` | Iniciar la selección.                  |
| Visual  | `g` + `n` + `n` | Ampliar la selección.                  |
| Visual  | `g` + `n` + `z` | Disminuir la selección.                |
| Visual  | `g` + `n` + `s` | Aumentar la selección a todo el scope. |

### Git

| VI Mode |            Keymap            | Description                                           |
| :-----: | :--------------------------: | ----------------------------------------------------- |
| Normal  | `<leader>` + `g` + `c` + `b` | Mostrar el responsable del commit en la línea actual. |

### Diagnostics

| VI Mode |     Keymap      | Description                               |
| :-----: | :-------------: | ----------------------------------------- |
| Normal  | `<space>` + `e` | Abre la ventana flotante de diagnosticos. |
| Normal  |    `[` + `d`    | Ir al siguiente diagnostico.              |
| Normal  |    `]` + `d`    | Ir al anterior diagnostico.               |
| Normal  | `<space>` + `q` | Abre la lista resúmen de diagnosticos.    |

### LSP

|    VI Mode     |      Keymap      | Description                                              |
| :------------: | :--------------: | -------------------------------------------------------- |
|     Normal     |    `g` + `D`     | Ir a la declaración.                                     |
|     Normal     |    `g` + `d`     | Ir a la definición.                                      |
|     Normal     |       `K`        | Abre la ventaba equivalente al hover informativo.        |
|     Normal     |    `g` + `i`     | Busca las implementaciones.                              |
|     Normal     |   `Ctrl` + `k`   | Abre la ayuda sobre la firma de un método.               |
|     Normal     | `<space>` + `D`  | Ir al tipo de la definición.                             |
|     Normal     | `<space>` + `rn` | Renombrar.                                               |
| Normal, Visual | `<space>` + `ca` | Abrir el ménu acciones de recomendaciones o sugerencias. |
|     Normal     |    `g` + `r`     | Buscar las referencias.                                  |
|     Normal     | `<space>` + `f`  | Formatear el código.                                     |

### CMP

| VI Mode |       Keymap       | Description                              |
| :-----: | :----------------: | ---------------------------------------- |
| Insert  | `Ctrl` + `<space>` | Abrir el menú de autocompletado.         |
| Insert  |    `Ctrl` + `e`    | Cerrar menú de autocompletado.           |
| Insert  |       `Tab`        | Autocompletar al siguiente en la lista.  |
| Insert  |   `Shift`+`Tab`    | Autocompletar el anterior en la lista.   |
| Insert  |    `Ctrl` + `k`    | Ir a la siguiente sección de un snippet. |
| Insert  |    `Ctrl` + `j`    | Ir a la sección anterior de un snippet.  |

### Telescope Window

| VI Mode |    Keymap    | Description                                                  |
| :-----: | :----------: | ------------------------------------------------------------ |
| Normal  | `Ctrl` + `x` | Abrir archivo en un buffer dividido horizontal.              |
| Normal  | `Ctrl` + `v` | Abrir archivo en un buffer dividido vertical.                |
| Normal  | `Ctrl` + `u` | Hacer scroll hacia arriba en la ventana de previsualización. |
| Normal  | `Ctrl` + `d` | Hacer scroll hacia abajo en la ventana de previsualización.  |

### Telescope

| VI Mode |              Keymap              | Description                                                  |
| :-----: | :------------------------------: | ------------------------------------------------------------ |
| Normal  |           `Ctrl` + `x`           | Abrir archivo en un buffer dividido horizontal.              |
| Normal  |           `Ctrl` + `v`           | Abrir archivo en un buffer dividido vertical.                |
| Normal  |           `Ctrl` + `u`           | Hacer scroll hacia arriba en la ventana de previsualización. |
| Normal  |           `Ctrl` + `d`           | Hacer scroll hacia abajo en la ventana de previsualización.  |
| Normal  |      `<leader>` + `f` + `f`      | Abrir buscador de archivos.                                  |
| Normal  |      `<leader>` + `f` + `a`      | Abrir buscador de archivos listados en git.                  |
| Normal  |      `<leader>` + `f` + `z`      | Buscar a partir de la palabra en el cursor.                  |
| Normal  |      `<leader>` + `f` + `s`      | Realizar búsqueda de palabras en todo el proyecto.           |
| Normal  |      `<leader>` + `f` + `b`      | Listado de buffers abiertos.                                 |
| Normal  |      `<leader>` + `f` + `e`      | Listado de archivos abiertos recientemente.                  |
| Normal  |      `<leader>` + `f` + `c`      | Listado de comandos de nvim.                                 |
| Normal  |   `<leader>` + `f` + `c` + `h`   | Listado del historial de comandos usados.                    |
| Normal  |   `<leader>` + `f` + `s` + `h`   | Listado del historial de busquedas.                          |
| Normal  |      `<leader>` + `f` + `h`      | Búsqueda de ayuda.                                           |
| Normal  |      `<leader>` + `f` + `m`      | Listado de marcas.                                           |
| Normal  |   `<leader>` + `f` + `k` + `m`   | Listado de atajos de teclado.                                |
| Normal  |   `<leader>` + `f` + `t` + `p`   | Listado de todos los tipos de archivos.                      |
| Normal  |   `<leader>` + `f` + `s` + `b`   | Abrir búscador de palabras en el buffer abierto.             |
| Normal  |      `<leader>` + `f` + `d`      | Listado de diagnosticos.                                     |
| Normal  | `<leader>` + `f` + `g` +`a` +`c` | Listado de todos los commits.                                |
| Normal  |   `<leader>` + `f` + `g` +`c`    | Listado de commits involucrados en al buffer abierto.        |
| Normal  |      `<leader>` + `f` + `s`      | Listado del estado de archivos en git.                       |
| Normal  |      `<leader>` + `f` + `b`      | Listado del ramas en git.                                    |
| Normal  |      `<leader>` + `f` + `y`      | Listado simbolos de un buffer.                               |
| Normal  |      `<leader>` + `l` + `r`      | Lista y recarga el módulo de lua seleccionado.               |
| Normal  |      `<leader>` + `f` + `r`      | Listado de archivos del directorio del buffer actual.        |
| Normal  |   `<leader>` + `f` + `d` + `n`   | Listado de archivos de configuración de nvim.                |
| Normal  |      `<leader>` + `f` + `n`      | Listado de archivos del proyecto.                            |

### Tests

| VI Mode |            Keymap            | Description                        |
| :-----: | :--------------------------: | ---------------------------------- |
| Normal  |       `<leader>` + `T`       | Ejecutar testcase mas cercano.     |
| Normal  |    `<leader>` + `t` + `f`    | Ejecutar tests de todo el archivo. |
| Normal  |    `<leader>` + `t` + `l`    | Ejecutar el último test ejecutado. |
| Normal  | `<leader>` + `t` + `c` + `c` | Visualizar code coverage.          |
