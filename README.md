# iTerm Launcher

> iTerm helper using AppleScript.

- macOS: Sierra 10.12.6
- iTerm2: Build 3.1.5

## Demo

![preview](./preview.gif)

```sh
./demo/run 2 3
Compiling /Users/user/git/iTerm-launcher/app/lib/iterm.applescript...
v2.0
```


## Example

```applescript
-- Load iTerm script.
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")

-- Use iTerm script.
set ITERM_WINDOW to newWindow(2, 2) of iterm -- row, column

-- show version
log VERSION of iterm
-- run command to current pane
runCmd(ITERM_WINDOW, "echo 'This is active pane current'") of iterm
-- run command to all panes
runCmdAllPanes(ITERM_WINDOW, "echo 'all'") of iterm
-- run command to specific pane
runCmdPane(ITERM_WINDOW, 2, "echo 'This is second pane'") of iterm
-- run commands to each pane
runCmdEachPanes(ITERM_WINDOW, [¬
  "echo '1'",¬
  "echo '2'",¬
  "echo '3'"¬
]) of iterm
-- send keystroke
sendKeystroke("CMD-OPT-i") of iterm
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

### `runCmd(windowId: int, command: String)`

Example:

```applescript
tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
set iterm to load script file (currentPath & "iterm.scpt")
set ITERM_WINDOW to newWindow(row, column) of iterm
runCmd(ITERM_WINDOW, "echo 'This is current active pane'") of iterm
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
