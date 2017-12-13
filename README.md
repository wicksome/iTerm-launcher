# iTerm Launcher

> iTerm helper using AppleScript.

![preview](./preview.gif)

- macOS: Sierra 10.12.6
- iTerm2: Build 3.1.5

## Example

```sh
$ ./run-example 2 1
Compiling /Users/yeongjun/git/iterm-launcher/app/lib/iterm2.applescript...
[iterm-launcher] row: 2
[iterm-launcher] column: 1
```

```applescript
-- load iterm scpt
tell application "Finder" to set currentPath to container of (path to me) as text
set iterm to load script file (currentPath & "iterm.scpt")

local row, column
set row to 2
set column to 2

-- Usage
set ITERM_WINDOW to newWindow(row, column) of iterm

runCmdAllPanes(ITERM_WINDOW, "echo 'all'") of iterm
runCmdPane(ITERM_WINDOW, 2, "echo 'This is second pane'") of iterm
runCmdEachPanes(ITERM_WINDOW, [¬
  "echo '1'",¬
  "echo '2'",¬
  "echo '3'"¬
]) of iterm
sendKeystroke("CMD-OPT-i") of iterm
```

## Usage

### `newWindow(row: int, column: int): windowId`

### `runCmdAllPanes(windowId: int, command: String)`

### `runCmdPane(windowId: int, paneId: int, command: String)`

### `runCmdEachPanes(windowId: Int, commands: Array)`

### `sendKeystroke(keystroke: String)`

## Reference

- https://www.iterm2.com/documentation-scripting.html
