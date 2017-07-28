on run argv
	-- get current path for load script.
	tell application "Finder"
		set currentPath to container of (path to me) as text
	end tell
	set iterm to load script file (currentPath & "iterm2.scpt")
	
	-- set row, column
	set itermDisplay to setRowColumn(argv)
	
	-- run
	set ITERM_WINDOW to openIterm(row of itermDisplay, column of itermDisplay) of iterm
	sendCommandToAllSessions(ITERM_WINDOW, "ls") of iterm
	sendCommandEachSessions(ITERM_WINDOW, [" -L"], "pwd", "") of iterm
	sendKeystroke("CMD-OPT-i") of iterm
end run

to setRowColumn(arg)
	if (count of arg) = 1 then
		set row to item 1 of arg
		set column to item 1 of arg
	else if (count of arg) = 2 then
		set row to item 1 of arg
		set column to item 2 of arg
	else
		set row to 2
		set column to 2
	end if
	log "set row: " & row & " / column: " & column
	
	return {row:row, column:column}
end setRowColumn
