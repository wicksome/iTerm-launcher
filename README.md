# iTerm Launcher

> AppleScript code to help you run iTerm2.

- macOS: Sierra 10.12.6
- iTerm2: Build 3.1.beta.6

![preview](./preview.gif)

- https://www.iterm2.com/documentation-scripting.html

## Usage

```applescript
-- load iterm scpt
tell application "Finder"
		set currentPath to container of (path to me) as text
end tell
set iterm to load script file (currentPath & "iterm2.scpt")

local row, column
set row to 2
set column to 2

set ITERM_WINDOW to openIterm(row, column) of iterm
sendCommandToAllSessions(ITERM_WINDOW, "ls") of iterm
sendCommandEachSessions(ITERM_WINDOW, [" -L"], "pwd", "") of iterm
sendKeystroke("CMD-OPT-i") of iterm
```
