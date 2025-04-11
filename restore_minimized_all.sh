#!/bin/bash

VERSION="1.0.0"

# Handle flags
case "$1" in
  -v|--version)
    echo "restore_all_windows.sh version $VERSION"
    exit 0
    ;;
  -h|--help)
    echo "Usage:"
    echo "  $0               # Restore all minimized windows"
    echo "  $0 -v | --version  # Show script version"
    echo "  $0 -h | --help     # Show this help message"
    exit 0
    ;;
esac

# Main script logic: restore all minimized windows
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
