#!/bin/bash

VERSION="1.0.0"

# Handle -v and -h flags
case "$1" in
  -v|--version)
    echo "restore_windows.sh version $VERSION"
    exit 0
    ;;
  -h|--help)
    echo "Usage:"
    echo "  $0 \"Process Name\"     # Restore minimized windows for that process"
    echo "  $0 --showprocess         # List visible processes (for reference)"
    echo "  $0 -v | --version      # Show script version"
    echo "  $0 -h | --help         # Show this help message"
    exit 0
    ;;
esac

# List visible apps
if [ "$1" == "--showprocess" ]; then
  echo "Visible running apps:"
  osascript -e 'tell application "System Events" to get name of (every process whose visible is true and background only is false)' \
    | tr ', ' '\n' | sed '/^$/d' | sort -f
  exit 0
fi

# If no argument is given
if [ -z "$1" ]; then
  echo "Error: No process name provided. Use -h for help."
  exit 1
fi

# Restore windows for the specified process
PROCESS_NAME="$1"

osascript <<EOF
tell application "System Events"
	set targetApp to "$PROCESS_NAME"
	if (exists process targetApp) then
		tell process targetApp
			repeat with w in windows
				try
					if value of attribute "AXMinimized" of w is true then
						set value of attribute "AXMinimized" of w to false
					end if
				end try
			end repeat
		end tell
	else
		display dialog "No such visible process: $PROCESS_NAME" buttons {"OK"} default button 1
	end if
end tell
EOF
