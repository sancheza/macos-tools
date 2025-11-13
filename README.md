# macos-tools


# Restore Minimized Windows (macOS)

A tiny macOS shell script that restores all minimized application windows with a single command.

To restore windows for a specific application, use restore_minimized.sh instead.

---

## Features

- Restores minimized windows for **all visible apps**
- Simple, safe, and pure AppleScript via `osascript`
- Works on **macOS Monterey, Ventura, Sonoma** (and likely earlier)
- Includes `-h` and `-v` options for help/version
- Great for full-screen productivity setups, window tiling, and automation

---

## Usage

```bash
./restore_minimized_all.sh
```

You can also run:

```bash
./restore_minimized_all.sh -v     # Show version
```
```bash
./restore_minimized_all.sh -h     # Show help message
```

## Installation (Optional)
You can add it to your ~/bin or PATH:
```bash
chmod +x restore_minimized_all.sh

mv restore_minimized_all.sh /usr/local/bin/restore_minimized_all.sh
```

Then simply run:
restore_minimized_all.sh

## Permissions
This script uses AppleScript via osascript, which may require Accessibility permissions the first time it runs. If prompted:

System Preferences → Security & Privacy → Accessibility → Add your terminal app (e.g. Terminal, iTerm)

## Why Use This?
Ever opened dozens of apps, minimized a bunch of windows, and forgot what’s where?
This script brings all your stuff back into view — instantly.

Great for:
- Full-screen coders who use Cmd+M a lot
- Multitaskers with hidden Slack, Chrome, Notion windows
- Anyone who hates clicking through the Dock

## 🧩 Compatibility
macOS 11+ (Big Sur, Monterey, Ventura, Sonoma)

Works with both Intel and Apple Silicon Macs

## 🙌 Credits
Made by @sancheza

## 📬 Feedback & Contributions
Found a bug or want to improve it?
Open an issue or submit a PR — contributions are welcome!
