#! /usr/bin/osascript

-- Main
on run argv
	-- Set row, column
	set itermLayout to setRowColumn(argv)

	-- Load iTerm script.
	tell application "Finder" to set currentPath to POSIX path of (container of (path to me) as text)
	set iterm to load script POSIX file (currentPath & "../app/bin/iterm.scpt")
	
    -- Run iTerm script.
    log "v" & VERSION of iterm
	set ITERM_WINDOW to newWindow() of iterm
    splitPane(ITERM_WINDOW, row of itermLayout, column of itermLayout) of iterm
    runCmd(ITERM_WINDOW, "echo 'This is active pane current'") of iterm
	runCmdAllPanes(ITERM_WINDOW, "echo 'all'") of iterm
	runCmdPane(ITERM_WINDOW, 2, "echo 'This is second pane'") of iterm
    runCmdEachPanes(ITERM_WINDOW, [¬
        "echo '1'",¬
        "echo '2'",¬
        "echo '3'"¬
    ]) of iterm
 	sendKeystroke("CMD-OPT-i") of iterm
end run

-- Helper function for example.
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

	return {row:row, column:column}
end setRowColumn
