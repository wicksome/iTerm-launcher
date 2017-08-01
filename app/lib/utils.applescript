#! /usr/bin/osascript
--------------------------------------------------------------------------------
-- Util library
--------------------------------------------------------------------------------

(*
Join the elements of an array into a string, and returns the string.
@param lst - list
@param separator
*)
on join(lst, separator)
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
to split(str, separator)
	set AppleScript's text item delimiters to separator
	set someText to str's text items
	set AppleScript's text item delimiters to {""} --> restore delimiters to default value
	return someText
end split

--------------------------------------------------------------------------------
-- Unused functions.
--------------------------------------------------------------------------------
-- get data of list's key
on getValue(theKey, theList)
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

on readFile(theFile)
	-- Convert the file to a string
	set theFile to theFile as string

	-- Read the file and return its contents
	return read file theFile
end readFile
