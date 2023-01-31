# NeoVim Configuration

## Keymaps

### General

| VI Mode |         Keymap         | Description                         |
| :-----: | :--------------------: | ----------------------------------- |
| Normal  | `<leader>` + `f` + `t` | Toggle the folders explorer         |
| Normal  | `<leader>` + `f` + `f` | Find files in the current directory |
| Normal  | `<leader>` + `p` + `f` | Find the workspace projects         |
| Normal  | `<leader>` + `o` + `f` | Find recently opened files          |
| Normal  | `<leader>` + `m` + `f` | Find Vim files marks                |
| Normal  | `<leader>` + `w` + `f` | Find words in the current directory |
| Normal  | `<leader>` + `s` + `t` | Toggle document symbols             |
| Normal  | `<leader>` + `t` + `o` | Open the terminal in a new buffer   |
| Normal  | `<leader>` + `t` + `t` | Toggle bottom terminal              |

### Folders Explorer

| VI Mode |         Keymap          | Description                  |
| :-----: | :---------------------: | ---------------------------- |
| Normal  |           `>`           | Enter directory              |
| Normal  |           `<`           | Leave directory              |
| Normal  |           `o`           | Open node                    |
| Normal  | Double left mouse click | Expand or collapse node      |
| Normal  |         `ENTER`         | Expand or collapse node      |
| Normal  |      `CTRL` + `t`       | Open in a new tab            |
| Normal  |      `CTRL` + `s`       | Open in a new split          |
| Normal  |      `CTRL` + `v`       | Open to the side             |
| Normal  |           `n`           | New path                     |
| Normal  |        `n` + `f`        | New file                     |
| Normal  |        `n` + `d`        | New directory                |
| Normal  |           `m`           | Move node                    |
| Normal  |           `c`           | Copy node                    |
| Normal  |           `d`           | Delete node                  |
| Normal  |           `q`           | Exit                         |
| Normal  |         `<F5>`          | Refresh the folders explorer |

### Windows

| VI Mode |       Keymap       | Description                              |
| :-----: | :----------------: | ---------------------------------------- |
| Normal  |    `CTRL` + `h`    | Move to the left window                  |
| Normal  |    `CTRL` + `j`    | Move to the down window                  |
| Normal  |    `CTRL` + `k`    | Move to the up window                    |
| Normal  |    `CTRL` + `l`    | Move to the right window                 |
| Normal  |    `Alt` + `h`     | Resize the window on the left            |
| Normal  |    `Alt` + `j`     | Resize the window on the down            |
| Normal  |    `Alt` + `k`     | Resize the window on the up              |
| Normal  |    `Alt` + `l`     | Resize the window on the right           |
| Normal  | `CTRL` + `w` + `m` | Toggle maximizer window                  |
| Normal  | `CTRL` + `w` + `o` | Close all windows except the current one |
| Normal  | `CTRL` + `w` + `t` | Open the current file in a new tab       |
| Normal  | `CTRL` + `w` + `s` | Split horizontally the current file      |
| Normal  | `CTRL` + `w` + `v` | Split vertically the current file        |

### Buffers

| VI Mode |        Keymap         | Description                              |
| :-----: | :-------------------: | ---------------------------------------- |
| Normal  |       `g` + `B`       | Go to previous buffer                    |
| Insert  |  `SHIFT` + `PAGE UP`  | Go to previous buffer                    |
| Normal  |       `g` + `b`       | Go to next buffer                        |
| Insert  | `SHIFT` + `PAGE DOWN` | Go to next buffer                        |
| Normal  |   `SHIFT` + `Home`    | Move buffer left                         |
| Normal  |    `SHIFT` + `End`    | Move buffer right                        |
| Normal  |       `1` + `b`       | Close all buffers except the current one |

### Tabs

| VI Mode |        Keymap        | Description                           |
| :-----: | :------------------: | ------------------------------------- |
| Normal  |      `g` + `T`       | Go to the previous tab                |
| Insert  |  `CTRL` + `PAGE UP`  | Go to the previous tab                |
| Normal  |      `g` + `t`       | Go to the next tab                    |
| Insert  | `CTRL` + `PAGE DOWN` | Go to the next tab                    |
| Normal  |      `1` + `t`       | Close all tabs except the current one |

### Autocomplete

| VI Mode |     Keymap      | Description                                                         |
| :-----: | :-------------: | ------------------------------------------------------------------- |
| Insert  |  `CTRL` + `p`   | Turn on autocomplete and select the previous item                   |
| Insert  |  `CTRL` + `n`   | Turn on autocomplete and select the next item                       |
| Insert  | `SHIFT` + `TAB` | Turn on autocomplete only after a word and select the previous item |
| Insert  |      `TAB`      | Turn on autocomplete only after a word and select the next item     |
| Insert  |  `CTRL` + `b`   | Scroll up in the item documentation                                 |
| Insert  |  `CTRL` + `f`   | Scroll down in the item documentation                               |
| Insert  |  `CTRL` + `e`   | Abort the autocomplete menu                                         |

### Commenting

| VI Mode |     Keymap     | Description               |
| :-----: | :------------: | ------------------------- |
| Normal  | `g` + `c`+ `c` | Comment the current line  |
| Visual  |   `g` + `c`    | Comment current selection |

### Moving Text

| VI Mode |     Keymap      | Description     |
| :-----: | :-------------: | --------------- |
| Normal  | `Alt` + `Left`  | Move char left  |
| Normal  | `Alt` + `Down`  | Move line down  |
| Normal  |  `Alt` + `Up`   | Move line up    |
| Normal  | `Alt` + `Right` | Move char right |

### Git Signs

|      VI Mode      |         Keymap         | Description                    |
| :---------------: | :--------------------: | ------------------------------ |
|      Normal       | `<leader>` + `g` + `d` | Split git diffs                |
|      Normal       | `<leader>` + `d` + `t` | Toggle show deleted lines      |
|      Normal       | `<leader>` + `b` + `t` | Toggle the current line blame  |
|      Normal       |       `[` + `h`        | Go to the previous hunk        |
|      Normal       |       `]` + `h`        | Go to the next hunk            |
|      Normal       | `<leader>` + `h` + `p` | Preview the current hunk       |
|      Normal       | `<leader>` + `b` + `p` | Preview the current line blame |
| Normal and Visual | `<leader>` + `h` + `s` | Stage the current hunk         |
| Normal and Visual | `<leader>` + `h` + `r` | Reset the current hunk         |

### Diagnostics

| VI Mode |         Keymap         | Description                       |
| :-----: | :--------------------: | --------------------------------- |
| Normal  | `<leader>` + `l` + `t` | Toggle lines diagnostics          |
| Normal  | `<leader>` + `d` + `p` | Preview of the current diagnostic |
| Normal  | `<leader>` + `d` + `l` | Show list of diagnostics          |
| Normal  |       `[` + `d`        | Go to previous diagnostic         |
| Normal  |       `]` + `d`        | Go to next diagnostic             |
| Normal  |          `K`           | Show hover documentation          |
| Insert  |      `CTRL` + `k`      | Show signature help               |
| Normal  | `<leader>` + `s` + `r` | Rename the current symbol         |
| Normal  | `<leader>` + `r` + `l` | Show list of references           |
| Normal  |       `g` + `d`        | Go to definition                  |
| Normal  |       `g` + `i`        | Go to implementation              |
| Normal  | `<leader>` + `c` + `a` | Show current code actions         |

### Debugging

| VI Mode |          Keymap           | Description                             |
| :-----: | :-----------------------: | --------------------------------------- |
| Normal  |          `<F9>`           | Toggle breakpoint on the current line   |
| Normal  |          `<F5>`           | Run and debug                           |
| Normal  |     `SHIFT` + `<F5>`      | Terminate the current debugging session |
| Normal  | `SHIFT` + `CTRL` + `<F5>` | Restart the current debugging session   |
| Normal  |          `<F6>`           | Debug pause                             |
| Normal  |          `<F10>`          | Debug step over                         |
| Normal  |          `<F11>`          | Debug step into                         |
| Normal  |     `CTRL` + `<F11>`      | Debug step into targets                 |
| Normal  |     `SHIFT` + `<F11>`     | Debug step out                          |
