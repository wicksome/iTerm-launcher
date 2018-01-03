#!/usr/bin/osascript
property version : "2.12"

--------------------------------------------------------------------------------
-- AppleScript for iterm2.
-- @see https://www.iterm2.com/documentation-scripting.html
-- @author yeongjun.kim / opid911@gmail.com
--------------------------------------------------------------------------------

(*
Open and Split iterm.

<pre><code>
set iterm to newWindow()
</code></pre>

@return created iterm's window
*)
to newWindow()
	local iterm
	tell application "iTerm2"
		-- Open iTerm
		if application "iTerm2" is running then
			set iterm to (create window with default profile)
		else
			activate application "iTerm2"
			set iterm to current window
		end if
		delay 1
	end tell

	return iterm
end newWindow

(*
Split pane.

@param iterm - iterm's window ID
@param row {int}
@param column {int}
*)
to splitPane(iterm, row, column)
	tell application "iTerm2"
		local currentSessions
    
        -- Show caution notification 
		if (column > 6) then
            display notification "bug when using tmux and column size if 80(#3)." ¬
                with title "iTerm2 Script"¬
                subtitle "The maximum column is 6."
                -- sound name "Frog"
		end if

		-- split horizontally pane
		tell current session of iterm
			repeat (row) - 1 times
				split horizontally with default profile
			end repeat
		end tell

		delay 0.5

		-- split vertically pane
		tell current tab of iterm
			set currentSessions to sessions of current tab of iterm
			repeat with s in currentSessions
				repeat (column - 1) times
					split vertically with default profile of s
				end repeat
			end repeat
		end tell

		delay 0.5

		-- select first pane
		tell first session of current tab of iterm
			select
		end tell
	end tell
end splitPane

(*
Run command to all panes.

<pre><code>
runCmdAllPanes(iterm, "ls")
</code></pre>

@param iterm - iterm's window
@param command - command for running in terminal
*)
to runCmdAllPanes(iterm, command)
	tell application "iTerm2"
		tell current tab of iterm
			repeat with pane in sessions
				tell pane
					write text command
					delay 0.5
				end tell
			end repeat
		end tell
	end tell
end runCmdAllPanes

(*
Run command to current active pane.

<pre><code>
runCmd(iterm, "pwd")
</code></pre>

@param iterm - iterm's window
@param command - command for running in terminal
*)
to runCmd(iterm, command)
	tell application "iTerm2"
		tell current session of iterm
			write text command
			delay 0.5
		end tell
	end tell
end runCmd

(*
Run command to specific pane.

<pre><code>
runCmdPane(iterm, 1, "pwd")
</code></pre>

@param iterm - iterm's window
@param paneId - pane's id
@param command - command for running in terminal
*)
to runCmdPane(iterm, paneId, command)
	tell application "iTerm2"
		tell current tab of iterm
			local index
			set index to 1
			repeat with pane in sessions
				tell pane
					if (index = paneId) then
						write text command
						delay 0.5
						exit repeat
					end if
				end tell
				set index to index + 1
			end repeat
		end tell
	end tell
end runCmdPane

(*
Run command to each pane.

<pre><code>
runCmdEachPanes(iterm, [¬
    "echo '1'",¬
    "echo '2'",¬
    "echo '3'"¬
])
</code></pre>

@param iterm - iterm's window
@param commands - command's array for running to each pane.
*)
to runCmdEachPanes(iterm, commands)
	tell application "iTerm2"
		tell current tab of iterm
			local index
			set index to 1
			repeat with pane in sessions
				tell pane
					if (index <= (count of commands)) then
						write text "" & item index of commands
						delay 0.5
					end if
				end tell
				set index to index + 1
			end repeat
		end tell
	end tell
end runCmdEachPanes

(*
Send keystroke.

<pre><code>
-- "CMD": command
-- "CTL": control
-- "OPT": option
-- "SHT": shift
sendKeystroke("CMD-OPT-i")
</code></pre>

@param keySetStr {string}
*)
to sendKeystroke(keySetStr)
	--set utils to load script file (currentPath & "utils.scpt")

	local keySet
	local funcKey
	local basicKey
	set funcKey to {}

	set keySet to _utils_split(keySetStr, "-")
	repeat with str in keySet
		set str to str as string
		if (str is "CMD") then
			copy command down to the end of the funcKey
		else if (str is "CTL") then
			copy control down to the end of the funcKey
		else if (str is "OPT") then
			copy option down to the end of the funcKey
		else if (str is "SHT") then
			copy shift down to the end of the funcKey
		else
			set basicKey to str
		end if
	end repeat

	tell application "System Events" to keystroke basicKey using funcKey
end sendKeystroke


--------------------------------------------------------------------------------
-- Utilitis.
-- prefix: "_utils_"
--------------------------------------------------------------------------------

(*
Join the elements of an array into a string, and returns the string.
@param lst - list
@param separator
*)
to _utils_join(lst, separator)
	set AppleScript's text item delimiters to separator
	set str to lst as string
	set AppleScript's text item delimiters to ""
	return str
end _utils_join


(*
Split a string into an array of substrings, and returns the new array.
@param str - string
@param separator
*)
to _utils_split(str, separator)
	set AppleScript's text item delimiters to separator
	set someText to str's text items
	set AppleScript's text item delimiters to {""} --> restore delimiters to default value
	return someText
end _utils_split

--------------------------------------------------------------------------------
-- [Deprecated] functions.
--------------------------------------------------------------------------------

-- get data of list's key
to getValue(theKey, theList)
	run script "on run{theKey, theList}
   return (" & theKey & " of theList )
end" with parameters {theKey, theList}
end getValue

to isRunningApplication(appName)
	try
		set pid to do shell script "/bin/ps -ef | grep " & appName & " | grep -v grep"
		return appName & " is running"
	on error err
		return appName & " is not running"
	end try
end isRunningApplication

to readFile(theFile)
	-- Convert the file to a string
	set theFile to theFile as string

	-- Read the file and return its contents
	return read file theFile
end readFile
