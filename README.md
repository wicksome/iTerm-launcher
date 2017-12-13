# iTerm Launcher

> iTerm helper using AppleScript.

![preview](./preview.gif)

- macOS: Sierra 10.12.6
- iTerm2: Build 3.1.5

## Example

```applescript
local row, column
set row to 2
set column to 2

-- Load iTerm script.
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")

-- Use iTerm script.
set ITERM_WINDOW to newWindow(row, column) of iterm

log VERSION of iterm
runCmdAllPanes(ITERM_WINDOW, "echo 'all'") of iterm
runCmdPane(ITERM_WINDOW, 2, "echo 'This is second pane'") of iterm
runCmdEachPanes(ITERM_WINDOW, [¬
  "echo '1'",¬
  "echo '2'",¬
  "echo '3'"¬
]) of iterm
sendKeystroke("CMD-OPT-i") of iterm
```

```sh
$ ./run-example
Compiling /Users/yeongjun/git/iterm-launcher/app/lib/iterm2.applescript...
v2.0
```

## Usage

### `newWindow(row: int, column: int): windowId`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
```

### `runCmdAllPanes(windowId: int, command: String)`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
runCmdAllPanes(ITERM_WINDOW, "ls -al") of iterm
```

### `runCmdPane(windowId: int, paneId: int, command: String)`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
runCmdPane(ITERM_WINDOW, 2, "echo 'This is second pane'") of iterm
```

### `runCmdEachPanes(windowId: Int, commands: Array)`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
runCmdEachPanes(ITERM_WINDOW, [¬
  "ls -al",¬
  "htop",¬
  "ps -ef | grep java"¬
]) of iterm
```

### `sendKeystroke(keystroke: String)`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
sendKeystroke("CMD-OPT-i") of iterm
```

## Reference

- https://www.iterm2.com/documentation-scripting.html
