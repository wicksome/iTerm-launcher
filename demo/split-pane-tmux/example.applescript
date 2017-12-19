#! /usr/bin/osascript

-- Main
-- * Requirement
-- - Set 'Open tmux windows as tabs in exising window' of iTerm Preferences - tmux Integration
on run argv
	-- Load iTerm script.
	tell application "Finder" to set currentPath to POSIX path of (container of (path to me) as text)
	set iterm to load script POSIX file (currentPath & "../../app/bin/iterm.scpt")
	
    -- Run iTerm script.
	set ITERM_WINDOW to newWindow() of iterm

    runCmd(ITERM_WINDOW, "tmux -CC") of iterm
    delay 0.5
    splitPane(ITERM_WINDOW, 1, count of argv) of iterm

    repeat with i from 1 to (count of argv)
        runCmdPane(ITERM_WINDOW, i, "echo '" & item i of argv & "'") of iterm
    end repeat

    runCmd(ITERM_WINDOW, "echo 'This is active pane current'") of iterm
	runCmdAllPanes(ITERM_WINDOW, "echo 'all'") of iterm
    runCmdEachPanes(ITERM_WINDOW, [¬
        "echo '1'",¬
        "echo '2'",¬
        "echo '3'"¬
    ]) of iterm
end run
