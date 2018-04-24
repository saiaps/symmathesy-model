#!/usr/bin/osascript
tell application "Finder"
	set myFolder to container of (path to me) as text
	set current_path to (POSIX path of (container of (path to me) as alias))
end tell

tell application "Keynote"
	activate
	open myFolder & "symmathesy.key"
	
end tell

tell application "System Events"
	
	tell process "Keynote"
		
		click menu item "PDF…" of menu of menu item "Export To" of menu "File" of menu bar 1
		click button "Next…" of sheet 1 of window 1
		delay 1
		keystroke "G" using {command down, shift down}
		keystroke current_path
		delay 1
		click button "Go" of sheet 1 of sheet 1 of window 1
		click button "Export" of sheet 1 of window 1
		
	end tell
	
end tell
