#!/bin/bash

osascript <<EOF
tell application "System Events"
	repeat with proc in (every process whose visible is true and background only is false)
		tell proc
			repeat with w in windows
				try
					if value of attribute "AXMinimized" of w is true then
						set value of attribute "AXMinimized" of w to false
					end if
				end try
			end repeat
		end tell
	end repeat
end tell
EOF
