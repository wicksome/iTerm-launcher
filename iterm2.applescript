--------------------------------------------------------------------------------
-- Utils for iterm2
-- @see https://www.iterm2.com/documentation-scripting.html
-- @author yeongjun.kim / opid911@gmail.com
--------------------------------------------------------------------------------

(*
Open and Split iterm.

<pre><code>
set iterm to openIterm(2, 2)
</code></pre>

@param row {int}
@param column {int}
@return created iterm's window
*)
-- 
to openIterm(row, column)
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
Send command to all sessions.

<pre><code>
sendCommandToAllSessions(iterm, "ls")
</code></pre>

@param iterm - iterm's window
@param command - command sended to terminal
*)
to sendCommandToAllSessions(iterm, command)
	tell application "iTerm"
		tell current tab of iterm
			repeat with eachSession in sessions
				tell eachSession
					write text command
					delay 0.5
				end tell
			end repeat
		end tell
	end tell
end sendCommandToAllSessions

(*
Send command to each session.

<pre><code>
sendCommandEachSessions(iterm, [" -L"], "pwd", "")
</code></pre>

@param iterm - iterm's window
@param commands - command's array for send to each session
*)
to sendCommandEachSessions(iterm, commands, prefix, postfix)
	tell application "iTerm"
		tell current tab of iterm
			local index
			set index to 1
			repeat with eachSession in sessions
				tell eachSession
					if (index ¡Â (count of commands)) then
						write text prefix & item index of commands & postfix
						set index to index + 1
						delay 0.5
					else
						return
					end if
				end tell
			end repeat
		end tell
	end tell
end sendCommandEachSessions

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
	tell application "Finder"
		set libPath to POSIX path of (container of (path to me) as text) & "lib/"
	end tell
	set utils to load script POSIX file (libPath & "utils.scpt")
	
	local keySet
	local funcKey
	local basicKey
	set funcKey to {}
	
	set keySet to split(keySetStr, "-") of utils
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
