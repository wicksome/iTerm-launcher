#! /usr/bin/osascript

-- Main
on run argv
    -- Show version.
    log "v" & VERSION of iterm

	-- Set row, column
	set itermDisplay to setRowColumn(argv)

	-- Load script.
	tell application "Finder" to set binPath to POSIX path of (container of (path to me) as text) & "app/bin/"
	set iterm to load script POSIX file (binPath & "iterm.scpt")
	
    -- Run iTerm script.
	set ITERM_WINDOW to newWindow(row of itermDisplay, column of itermDisplay) of iterm
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
	log "[iterm-launcher] row: " & row
	log "[iterm-launcher] column: " & column

	return {row:row, column:column}
end setRowColumn
