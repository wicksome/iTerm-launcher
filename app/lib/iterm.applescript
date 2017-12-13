#! /usr/bin/osascript
property VERSION : "2.0"

--------------------------------------------------------------------------------
-- AppleScript for iterm2.
-- @see https://www.iterm2.com/documentation-scripting.html
-- @author yeongjun.kim / opid911@gmail.com
--------------------------------------------------------------------------------

(*
Open and Split iterm.

<pre><code>
set iterm to newWindow(2, 2)
</code></pre>

@param row {int}
@param column {int}
@return created iterm's window
*)
--
to newWindow(row, column)
	local iterm
	tell application "iTerm"
		-- Open iTerm
		if application "iTerm" is running then
			set iterm to (create window with default profile)
		else
			activate application "iTerm"
			set iterm to current window
		end if
		delay 1

		-- Split pane
		tell current session of iterm
			repeat (row) - 1 times
				tell (split horizontally with default profile)
					repeat (column) - 1 times
						split vertically with default profile
					end repeat
				end tell
			end repeat

			repeat (column) - 1 times
				split vertically with default profile
			end repeat
		end tell
	end tell
	return iterm
end openIterm

(*
Run command to all panes.

<pre><code>
runCmdAllPanes(iterm, "ls")
</code></pre>

@param iterm - iterm's window
@param command - command for running in terminal
*)
to runCmdAllPanes(iterm, command)
	tell application "iTerm"
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
Run command to each pane.

<pre><code>
runCmdPane(iterm, 1, "pwd")
</code></pre>

@param iterm - iterm's window
@param paneId - pane's id
@param command - command for running in terminal
*)
to runCmdPane(iterm, paneId, command)
	tell application "iTerm"
		tell current tab of iterm
			local index
			set index to 1
			repeat with pane in sessions
				tell pane
					if (index = paneId) then
						write text command
                        exit repeat
					end if
				end tell
				set index to index + 1
			end repeat
		end tell
	end tell
end runCmdCurrentPane

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
	tell application "iTerm"
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
end join


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
end split

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
